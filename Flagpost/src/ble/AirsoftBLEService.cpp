#include "AirsoftBLEService.h"

AirsoftBLEService::AirsoftBLEService(std::string name, Data* data){
  this->data = data;

  //create handlers
    this->airsoftBLEServerCallbacks = new AirsoftBLEServerCallbacks(this->data);
    this->voltageCallbackHandler = new VoltageCallbackHandler(this->data);
    this->timeCallbackHandler = new TimeCallbackHandler();
    

  //init
  BLEDevice::init(name);

  pServer = BLEDevice::createServer();
  pServer->setCallbacks(this->airsoftBLEServerCallbacks);
  
  pService = pServer->createService(SERVICE_UUID);
  

  // Create a BLE Characteristics
  pVoltageCharacteristic = pService->createCharacteristic(
                      VOLTAGE_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ
                    );      
  pVoltageCharacteristic->setAccessPermissions(ESP_GATT_PERM_READ_ENCRYPTED | ESP_GATT_PERM_WRITE_ENCRYPTED);  
  pVoltageCharacteristic->setCallbacks(this->voltageCallbackHandler);

  pTimeCharacteristic = pService->createCharacteristic(
                      TIME_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE
                    );      
  pTimeCharacteristic->setAccessPermissions(ESP_GATT_PERM_READ_ENCRYPTED | ESP_GATT_PERM_WRITE_ENCRYPTED);      
  pTimeCharacteristic->setCallbacks(this->timeCallbackHandler);
  

  // Create a BLE Descriptors
  //pVoltageDescr = new BLEDescriptor(VOLTAGE_DESCRIPTOR_UUID, 2);
  //pVoltageDescr->setCallbacks(this->voltageCallbackHandler);
  //pVoltageCharacteristic->addDescriptor(pVoltageDescr);

  //pTimeDescr = new BLEDescriptor(TIME_DESCRIPTOR_UUID, 7);
  //pTimeDescr->setCallbacks(this->timeCallbackHandler);
  //pTimeCharacteristic->addDescriptor(pTimeDescr);
  

  // Start the service
  pService->start();
  
  
  // Start advertising
  pAdvertising = BLEDevice::getAdvertising();
  pAdvertising->addServiceUUID(SERVICE_UUID);
  pAdvertising->setScanResponse(false);
  pAdvertising->setMinPreferred(0x0);  // set value to 0x00 to not advertise this parameter
  BLEDevice::startAdvertising();
}



void AirsoftBLEService::restartAdvertising(){
  BLEDevice::startAdvertising();
  
}

