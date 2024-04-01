#pragma once

#include "Arduino.h"

void writeUint8ArrayToUint64(uint64_t* target, uint8_t* source);

void writeUint64ToUint8Array(uint8_t* target, uint64_t* source);

void writeUint8ArrayToUint16(uint16_t* target, uint8_t* source);

void writeUint16ToUint8Array(uint8_t* target, uint16_t* source);