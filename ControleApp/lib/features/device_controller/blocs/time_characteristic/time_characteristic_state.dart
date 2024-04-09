import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_characteristic_state.freezed.dart';

@freezed
class TimeCharacteristicState with _$TimeCharacteristicState {
  const factory TimeCharacteristicState({
    @Default([]) List<int> data,
  }) = _TimeCharacteristicState;
}
