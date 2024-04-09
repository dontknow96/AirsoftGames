import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_characteristic_event.freezed.dart';

@freezed
class TimeCharacteristicEvent with _$TimeCharacteristicEvent{
  const factory TimeCharacteristicEvent.write() = Write;
  const factory TimeCharacteristicEvent.read() = Read;
}
