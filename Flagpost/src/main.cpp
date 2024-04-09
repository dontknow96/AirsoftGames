#include "ble/AirsoftBLEService.h"
#include "PushButton.h"
#include "GameController.h"

#include "Arduino.h"
#include <Bonezegei_LCD1602_I2C.h>



#define SDA 23
#define SCL 22

#define LEFT_BUTTON_GPIO 12
#define RIGHT_BUTTON_GPIO 14


Bonezegei_LCD1602_I2C lcd(0x27);

Data* data = NULL;
AirsoftBLEService* service = NULL;
PushButton* left = NULL;
PushButton* right = NULL;
GameController* controller = NULL;


void setup() {
  Serial.begin(115200);
  Wire.begin(SDA, SCL);

  //LCD
  lcd.begin();
  lcd.clear();


  //init
  data = new Data();
  controller = new GameController(&lcd, data);
  service = new AirsoftBLEService("FlagPost", data, controller);

  left = new PushButton(LEFT_BUTTON_GPIO, &data->leftButtonPressed);
  right = new PushButton(RIGHT_BUTTON_GPIO, &data->rightButtonPressed);
}

void loop() {
  left->loop();
  right->loop();
  
  controller->loop();
  service->loop();
}