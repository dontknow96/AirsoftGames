#include "GameController.h"

void GameController::display(unsigned long timestamp){
    //display Points
    this->lcd->setPosition(0, 1);
    String leftTeamString = (data->heldByTeam == data->teamNameLeft? ">": " ") + String(data->teamNameLeft) +  ":" + String(data->leftTeamPoints/10000);
    this->lcd->print(leftTeamString.c_str());


    this->lcd->setPosition(8, 1);
    String rightTeamString = (data->heldByTeam == data->teamNameRight? ">": " ") + String(data->teamNameRight) +  ":" + String(data->rightTeamPoints/10000);
    this->lcd->print(rightTeamString.c_str());

    //display BLE connections
    if(data->connected_devices > 0){
        this->lcd->setPosition(14, 0);
        this->lcd->print(String(data->connected_devices).c_str());
    }

    //display cap progress
    if(this->capInProgress){
        long long timeDiff = std::abs((long long)(timestamp - capStart));
        float percentage = 0.0;

        if(this->capOnNeutral){
            percentage = (float)timeDiff / (float)CLAIM_TIME;
        }else{
            if(this->data->heldByTeam == NO_TEAM_CLAIM){
                percentage = (float)(timeDiff-UNCLAIM_TIME) / (float)CLAIM_TIME;
            }else{
                percentage = 1-((float)timeDiff / (float)UNCLAIM_TIME);
            }
        }

        this->lcd->setPosition(0, 0);
        this->lcd->print(String(this->percentageHelper(percentage)).c_str());
    }
    //display time
    else{
        time_t now = time(0);
        tm* localtm = localtime(&now);

        String timeString = String("    ") +
            (localtm->tm_hour > 9 ? "" : "0") + String(localtm->tm_hour)+":"+
            (localtm->tm_min > 9 ? "" : "0") + String(localtm->tm_min)+":"+
            (localtm->tm_sec > 9 ? "" : "0") + String(localtm->tm_sec)+"    ";

        this->lcd->setPosition(0, 0);
        this->lcd->print(timeString.c_str());
    }
    

    this->lcd->setPosition(16, 2);
}



void GameController::loop(){
    unsigned long timestamp = millis();
    long long timeDiffDisplay = std::abs((long long)(timestamp - lastDisplay));
    long long timeDiffPointCalc = std::abs((long long)(timestamp - lastPointCalc));

    
    //handle capping
    if(this->capInProgress)
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

    if(timeDiffDisplay > DISPLAY_INTERVAL){
        lastDisplay = timestamp;
        this->display(timestamp);
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
    
    
    this->capStart = timestamp;
    this->capOnNeutral = data->heldByTeam == NO_TEAM_CLAIM;
    this->capInProgress = true;

    if(data->leftButtonPressed)
        this->cappingTeam = data->teamNameLeft;
    else
        this->cappingTeam = data->teamNameRight;
}

void GameController::handleCapInProgress(unsigned long timestamp){
    //reset if button was changed not held anymore or both held
    if(!(data->leftButtonPressed xor data->rightButtonPressed) || (this->cappingTeam == data->teamNameLeft && data->rightButtonPressed) || (this->cappingTeam == data->teamNameRight && data->leftButtonPressed)){
        this->capInProgress = false;
        this->cappingTeam = NO_TEAM_CLAIM;
        this->capStart = 0;
        return;
    }

    //was button pressed long enough to unclaim?
    if(timestamp > UNCLAIM_TIME+capStart){
        data->heldByTeam = NO_TEAM_CLAIM;
    }

    //was button pressed long enough to claim?
    if(timestamp > UNCLAIM_TIME+CLAIM_TIME+capStart-(this->capOnNeutral?UNCLAIM_TIME:0)){
        if(data->leftButtonPressed){
            data->heldByTeam = data->teamNameLeft;
        }else{
            data->heldByTeam = data->teamNameRight;
        }

        this->capInProgress = false;
        this->cappingTeam = NO_TEAM_CLAIM;
        this->capStart = 0;
    }
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