#include "TimeCallbackHandler.h"

void TimeCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	time_t now = time(0);
	tm* localtm = localtime(&now);

	pCharacteristic->setValue(asctime(localtm));
}

void TimeCallbackHandler::onWrite(BLECharacteristic* pCharacteristic){
	uint8_t* values = pCharacteristic->getData();

	int year = (*(values) << 8) + *(values+1);
	int month = *(values+2);
	int day = *(values+3);
	int hour = *(values+4);
	int minute = *(values+5);
	int second = *(values+6);
	
	struct tm tm;
    tm.tm_year = year - 1900;
    tm.tm_mon = month;
    tm.tm_mday = day;
    tm.tm_hour = hour;
    tm.tm_min = minute;
    tm.tm_sec = second;

    time_t t = mktime(&tm);

    struct timeval now = { .tv_sec = t };

    settimeofday(&now, NULL);
}