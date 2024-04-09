import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_controller_event.freezed.dart';

@freezed
class DeviceControllerEvent with _$DeviceControllerEvent{
  const factory DeviceControllerEvent.init() = Init;
}
