#pragma once

#include <Bonezegei_LCD1602_I2C.h>
#include <Data.h>

#define DISPLAY_INTERVAL 100
#define DISPLAY_SIZE_X 16

#define UNCLAIM_TIME 2000
#define CLAIM_TIME 4000

#define NO_TEAM_CLAIM '\0'



class GameController
{
private:
    Bonezegei_LCD1602_I2C* lcd;
    Data* data;
    unsigned long lastDisplay = 0;
    unsigned long lastPointCalc = 0;

    bool capInProgress = false;
    bool capOnNeutral = true;
    char cappingTeam = NO_TEAM_CLAIM;
    unsigned long capStart = 0;
    unsigned long holdingSince = 0;


    String percentageHelper(float percentage);
    void display(unsigned long timestamp);
    void handleCapInProgress(unsigned long timestamp);
    void handleCapStart(unsigned long timestamp);

public:
    void loop();
    GameController(Bonezegei_LCD1602_I2C* lcd, Data* data);
};