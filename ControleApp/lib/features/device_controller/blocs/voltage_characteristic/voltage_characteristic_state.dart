import 'package:freezed_annotation/freezed_annotation.dart';

part 'voltage_characteristic_state.freezed.dart';

@freezed
class VoltageCharacteristicState with _$VoltageCharacteristicState {
  const factory VoltageCharacteristicState({
    required double voltage,
  }) = _VoltageCharacteristicState;
}
