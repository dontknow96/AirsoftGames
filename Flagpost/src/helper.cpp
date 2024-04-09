#include "Arduino.h"

void writeUint8ArrayToUint64(uint64_t* target, uint8_t* source){
	*target += source[0];
	*target = *target << 8;
	*target += source[1];
	*target = *target << 8;
	*target += source[2];
	*target = *target << 8;
	*target += source[3];
	*target = *target << 8;
	*target += source[4];
	*target = *target << 8;
	*target += source[5];
	*target = *target << 8;
	*target += source[6];
	*target = *target << 8;
	*target += source[7];
}

void writeUint64ToUint8Array(uint8_t* target, uint64_t* source){
	target[0] = ((u_int8_t*)(source))[7];
	target[1] = ((u_int8_t*)(source))[6];
	target[2] = ((u_int8_t*)(source))[5];
	target[3] = ((u_int8_t*)(source))[4];
	target[4] = ((u_int8_t*)(source))[3];
	target[5] = ((u_int8_t*)(source))[2];
	target[6] = ((u_int8_t*)(source))[1];
	target[7] = ((u_int8_t*)(source))[0];
}

void writeUint8ArrayToUint16(uint16_t* target, uint8_t* source){
	*target += source[0];
	*target = *target << 8;
	*target += source[1];
}

void writeUint16ToUint8Array(uint8_t* target, uint16_t* source){
	target[0] = ((u_int8_t*)(source))[1];
	target[1] = ((u_int8_t*)(source))[0];
}


void writeUint8ArrayFloat(float_t* target, uint8_t* source){
	uint8_t* hack = (uint8_t*)target;

	*hack += source[0];
	*hack = *hack << 8;
	*hack += source[1];
	*hack = *hack << 8;
	*hack += source[2];
	*hack = *hack << 8;
	*hack += source[3];
}

void writeFloatToUint8Array(uint8_t* target, float_t* source){
	target[0] = ((u_int8_t*)(source))[3];
	target[1] = ((u_int8_t*)(source))[2];
	target[2] = ((u_int8_t*)(source))[1];
	target[3] = ((u_int8_t*)(source))[0];
}
