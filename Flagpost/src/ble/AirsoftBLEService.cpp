#include "AirsoftBLEService.h"

AirsoftBLEService::AirsoftBLEService(std::string name, Data* data, GameController* controller){
  this->data = data;
  this->controller = controller;

  //create handlers
    this->airsoftBLEServerCallbacks = new AirsoftBLEServerCallbacks(this->data);
    this->voltageCallbackHandler = new VoltageCallbackHandler(this->data);
    this->timeCallbackHandler = new TimeCallbackHandler();
    this->gameStateCallbackHandler = new GameStateCallbackHandler(this->data, this->controller);
    this->gameSettingsCallbackHandler = new GameSettingsCallbackHandler(this->data, this->controller);
    this->deviceSettingsCallbackHandler = new DeviceSettingsCallbackHandler(this->data);
    

  //init
  BLEDevice::init(name);

  pServer = BLEDevice::createServer();
  pServer->setCallbacks(this->airsoftBLEServerCallbacks);
  
  pService = pServer->createService(SERVICE_UUID);
  

  // Create a BLE Characteristics
  //
  //Voltage
  pVoltageCharacteristic = pService->createCharacteristic(
                      VOLTAGE_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ
                    );      
  pVoltageCharacteristic->setAccessPermissions(ESP_GATT_PERM_READ_ENCRYPTED | ESP_GATT_PERM_WRITE_ENCRYPTED);  
  pVoltageCharacteristic->setCallbacks(this->voltageCallbackHandler);

  
  //Time
  pTimeCharacteristic = pService->createCharacteristic(
                      TIME_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE
                    );      
  pTimeCharacteristic->setAccessPermissions(ESP_GATT_PERM_READ_ENCRYPTED | ESP_GATT_PERM_WRITE_ENCRYPTED);      
  pTimeCharacteristic->setCallbacks(this->timeCallbackHandler);
  
  //Device Settings
  pDeviceSettingsCharacteristic = pService->createCharacteristic(
                      DEVICE_SETTINGS_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE
                    );      
  pDeviceSettingsCharacteristic->setAccessPermissions(ESP_GATT_PERM_READ_ENCRYPTED | ESP_GATT_PERM_WRITE_ENCRYPTED);      
  pDeviceSettingsCharacteristic->setCallbacks(this->deviceSettingsCallbackHandler);

  //Game Settings
  pGameSettingsCharacteristic = pService->createCharacteristic(
                      GAME_SETTINGS_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE
                    );      
  pGameSettingsCharacteristic->setAccessPermissions(ESP_GATT_PERM_READ_ENCRYPTED | ESP_GATT_PERM_WRITE_ENCRYPTED);      
  pGameSettingsCharacteristic->setCallbacks(this->gameSettingsCallbackHandler);

  
  //Game State
  pGameStateCharacteristic = pService->createCharacteristic(
                      GAME_STATE_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE
                    );      
  pGameStateCharacteristic->setAccessPermissions(ESP_GATT_PERM_READ_ENCRYPTED | ESP_GATT_PERM_WRITE_ENCRYPTED);      
  pGameStateCharacteristic->setCallbacks(this->gameStateCallbackHandler);
  

  // Start the service
  pService->start();
  
  
  // Start advertising
  pAdvertising = BLEDevice::getAdvertising();
  pAdvertising->addServiceUUID(SERVICE_UUID);
  pAdvertising->setScanResponse(false);
  pAdvertising->setMinPreferred(0x0);  // set value to 0x00 to not advertise this parameter
  BLEDevice::startAdvertising();
}



void AirsoftBLEService::loop(){
  unsigned long timestamp = millis();
  long long timeDiff= std::abs((long long)(timestamp - lastBleAdvertisement));

  if(timeDiff > data->bleAdvertisementInterval){
    BLEDevice::startAdvertising();
  }  
}

