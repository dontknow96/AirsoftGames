import 'package:controleapp/features/device_controller/widgets/time_characteristic.dart';
import 'package:controleapp/features/device_controller/widgets/unknown_characteristic.dart';
import 'package:controleapp/features/device_controller/widgets/voltage_characteristic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class AirsoftCharacteristicTile extends StatelessWidget {
  const AirsoftCharacteristicTile({required this.characteristic, super.key});

  final BluetoothCharacteristic characteristic;

  @override
  Widget build(BuildContext context) {
    return (_mapper[characteristic.characteristicUuid.str] ??
        (BluetoothCharacteristic characteristic) => UnknownCharacteristic(characteristic: characteristic,))
      (characteristic);
  }

  static final Map<String,
      AirsoftCharacteristic Function(BluetoothCharacteristic)> _mapper = {
    'ef2c75fa-f3a9-4b17-bc58-5a8fad810949': (characteristic) =>
        VoltageCharacteristic(characteristic: characteristic),
    '8888e505-5baf-4532-b956-e8c7f4c80977': (characteristic) =>
        TimeCharacteristic(characteristic: characteristic),
  };
}

abstract class AirsoftCharacteristic extends StatelessWidget {
  const AirsoftCharacteristic({required this.characteristic, super.key});
  final BluetoothCharacteristic characteristic;
}
