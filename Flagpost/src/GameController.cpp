#include "GameController.h"

void GameController::display(unsigned long timestamp){
    //display Points
    lcd->setPosition(0, 1);
    String leftTeamString = (data->heldByTeam == data->teamNameLeft? ">": " ") + String(data->teamNameLeft) +  ":" + String(data->leftTeamPoints/1000);
    lcd->print(leftTeamString.c_str());


    lcd->setPosition(8, 1);
    String rightTeamString = (data->heldByTeam == data->teamNameRight? ">": " ") + String(data->teamNameRight) +  ":" + String(data->rightTeamPoints/1000);
    lcd->print(rightTeamString.c_str());

    //display BLE connections
    if(data->connected_devices > 0){
        lcd->setPosition(14, 0);
        lcd->print(String(data->connected_devices).c_str());
    }

    //display cap progress
    if(capInProgress){
        long long timeDiff = std::abs((long long)(timestamp - capStart));
        float percentage = 0.0;

        if(capOnNeutral){
            percentage = (float)timeDiff / (float)data->claimTime;
        }else{
            if(data->heldByTeam == NO_TEAM_CLAIM){
                percentage = (float)(timeDiff-data->unclaimTime) / (float)data->claimTime;
            }else{
                percentage = 1-((float)timeDiff / (float)data->unclaimTime);
            }
        }

        lcd->setPosition(0, 0);
        lcd->print(String(percentageHelper(percentage)).c_str());
    }
    //display time
    else{
        time_t now = time(0);
        tm* localtm = localtime(&now);

        String timeString = String("    ") +
            (localtm->tm_hour > 9 ? "" : "0") + String(localtm->tm_hour)+":"+
            (localtm->tm_min > 9 ? "" : "0") + String(localtm->tm_min)+":"+
            (localtm->tm_sec > 9 ? "" : "0") + String(localtm->tm_sec)+"    ";

        lcd->setPosition(0, 0);
        lcd->print(timeString.c_str());
    }
    

    lcd->setPosition(16, 2);
}



void GameController::loop(){
    unsigned long timestamp = millis();
    long long timeDiffDisplay = std::abs((long long)(timestamp - lastDisplay));
    long long timeDiffPointCalc = std::abs((long long)(timestamp - lastPointCalc));

    
    //handle capping
    if(capInProgress)
        handleCapInProgress(timestamp);
    else
        handleCapStart(timestamp);


    //handle points
    if(data->heldByTeam != NO_TEAM_CLAIM){
        if(data->heldByTeam == data->teamNameLeft){
            data->leftTeamPoints += timeDiffPointCalc;
        }else{
            data->rightTeamPoints += timeDiffPointCalc;
        }
    }
    lastPointCalc = timestamp;

    if(timeDiffDisplay > data->displaySetInterval){
        lastDisplay = timestamp;
        display(timestamp);
    }
}

void GameController::handleCapStart(unsigned long timestamp){
    //is state not any singular button pressed?
    if(!(data->leftButtonPressed xor data->rightButtonPressed))
        return;

    //is team already owner?
    if(data->heldByTeam == data->teamNameLeft && data->leftButtonPressed)
        return;
    if(data->heldByTeam == data->teamNameRight && data->rightButtonPressed)
        return;
    
    
    capStart = timestamp;
    capOnNeutral = data->heldByTeam == NO_TEAM_CLAIM;
    capInProgress = true;

    if(data->leftButtonPressed)
        cappingTeam = data->teamNameLeft;
    else
        cappingTeam = data->teamNameRight;
}

void GameController::handleCapInProgress(unsigned long timestamp){
    //reset if button was changed not held anymore or both held
    if(!(data->leftButtonPressed xor data->rightButtonPressed) || (cappingTeam == data->teamNameLeft && data->rightButtonPressed) || (cappingTeam == data->teamNameRight && data->leftButtonPressed)){
        capInProgress = false;
        cappingTeam = NO_TEAM_CLAIM;
        capStart = 0;
        return;
    }

    //was button pressed long enough to unclaim?
    if(timestamp > data->unclaimTime+capStart){
        data->heldByTeam = NO_TEAM_CLAIM;
    }

    //was button pressed long enough to claim?
    if(timestamp > data->unclaimTime+data->claimTime+capStart-(capOnNeutral?data->unclaimTime:0)){
        if(data->leftButtonPressed){
            data->heldByTeam = data->teamNameLeft;
        }else{
            data->heldByTeam = data->teamNameRight;
        }

        capInProgress = false;
        cappingTeam = NO_TEAM_CLAIM;
        capStart = 0;
    }
}

void GameController::renameTeam(char oldTeam, char newTeam){
    if (oldTeam != data->teamNameLeft && oldTeam != data->teamNameRight)
        return;

    if (newTeam == data->teamNameLeft || newTeam == data->teamNameRight)
        return;
    
    
    if(data->heldByTeam == oldTeam)
        data->heldByTeam = newTeam;

    if(cappingTeam == oldTeam)
        cappingTeam = newTeam;

    if (oldTeam == data->teamNameLeft)
        data->teamNameLeft = newTeam;
    else
        data->teamNameRight = newTeam;
}

GameController::GameController(Bonezegei_LCD1602_I2C* lcd, Data* data){
    this->lcd = lcd;
    this->data = data;
}

String GameController::percentageHelper(float percentage){
    int blocks = (DISPLAY_SIZE_X-2)*percentage;
    int free = (DISPLAY_SIZE_X-2)-blocks;
    
    String retVal = "[";
    
    for(int i = 0; i < blocks; i++){
        retVal += "#";
    }
    
    for(int i = 0; i < free; i++){
        retVal += " ";
    }

    retVal += "]";

    return retVal;
}