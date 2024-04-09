#pragma once

#include "Arduino.h"


struct Data
{
    int connected_devices = 0;

    //physical stuff
    bool leftButtonPressed = false;
    bool rightButtonPressed = false;
    float voltage = 0.0;

    //device settings
    u_int16_t batterymeasureInterval = 100;
    u_int16_t displaySetInterval = 100;
    u_int16_t bleAdvertisementInterval = 10000;
    
    //game settings
    u_int64_t unclaimTime = 2000;
    u_int64_t claimTime = 4000;
    char teamNameLeft = 'R';
    char teamNameRight = 'G';

    //gamestate
    u_int64_t leftTeamPoints = 0;
    u_int64_t rightTeamPoints = 0;
    char heldByTeam = '\0';
};