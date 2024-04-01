#include "AirsoftBLEServerCallbacks.h"

AirsoftBLEServerCallbacks::AirsoftBLEServerCallbacks(Data* data){
    this->data = data;
}

void AirsoftBLEServerCallbacks::onConnect(BLEServer* pServer){
    this->data->connected_devices++;
}
void AirsoftBLEServerCallbacks::onDisconnect(BLEServer* pServer){
    this->data->connected_devices--;    
}