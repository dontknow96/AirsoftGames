import 'package:freezed_annotation/freezed_annotation.dart';

part 'voltage_characteristic_event.freezed.dart';

@freezed
class VoltageCharacteristicEvent with _$VoltageCharacteristicEvent{
  const factory VoltageCharacteristicEvent.read() = Read;
}
