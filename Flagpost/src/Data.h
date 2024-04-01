#pragma once


struct Data
{
    int connected_devices = 0;

    //physical stuff
    bool leftButtonPressed = false;
    bool rightButtonPressed = false;
    float voltage = 0.0;

    //gamestate
    unsigned long leftTeamPoints = 0;
    unsigned long rightTeamPoints = 0;
    char heldByTeam = '\0';
    char teamNameLeft = 'R';
    char teamNameRight = 'G';
};