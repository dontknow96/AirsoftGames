import 'package:controleapp/features/device_controller/widgets/characteristic.dart';
import 'package:flutter/material.dart';

class VoltageCharacteristic extends AirsoftCharacteristic{
  const VoltageCharacteristic({required super.characteristic, super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('VoltageCharacteristic');
  }

}
