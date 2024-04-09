import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_controller_state.freezed.dart';

@freezed
class DeviceControllerState with _$DeviceControllerState {
  const factory DeviceControllerState({
    required BluetoothDevice device,
    @Default([]) Iterable<BluetoothCharacteristic> characteristics,
  }) = _DeviceControllerState;
}
