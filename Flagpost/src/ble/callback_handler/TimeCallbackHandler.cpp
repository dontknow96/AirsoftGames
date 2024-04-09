#include "TimeCallbackHandler.h"

void TimeCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	uint8_t readData[8];

    struct timeval now;

	gettimeofday(&now, NULL);

	uint64_t secondsSinceEpoch = now.tv_sec;
	Serial.println("secondsSinceEpoch");
	Serial.println(secondsSinceEpoch);
	Serial.println("tv_sec");
	Serial.println(now.tv_sec);

	writeUint64ToUint8Array(readData+0, &secondsSinceEpoch);	

	pCharacteristic->setValue(readData,8);
}

void TimeCallbackHandler::onWrite(BLECharacteristic* pCharacteristic){
	uint8_t* values = pCharacteristic->getData();
	
	uint64_t secondsSinceEpoch = 0;
	writeUint8ArrayToUint64(&secondsSinceEpoch, values+0);
	Serial.println("secondsSinceEpoch");
	Serial.println(secondsSinceEpoch);

    struct timeval now = { .tv_sec = (long int)secondsSinceEpoch};
	Serial.println("tv_sec");
	Serial.println(now.tv_sec);

    settimeofday(&now, NULL);
}