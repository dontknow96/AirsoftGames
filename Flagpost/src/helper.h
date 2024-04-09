#pragma once

#include "Arduino.h"

//Uint64 conversion
void writeUint8ArrayToUint64(uint64_t* target, uint8_t* source);
void writeUint64ToUint8Array(uint8_t* target, uint64_t* source);

//Uint16 conversion
void writeUint8ArrayToUint16(uint16_t* target, uint8_t* source);
void writeUint16ToUint8Array(uint8_t* target, uint16_t* source);

//float conversion
void writeUint8ArrayFloat(float_t* target, uint8_t* source);
void writeFloatToUint8Array(uint8_t* target, float_t* source);