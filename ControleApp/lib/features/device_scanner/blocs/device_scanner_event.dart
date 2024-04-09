import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_scanner_event.freezed.dart';

@freezed
class DeviceScannerEvent with _$DeviceScannerEvent{
  const factory DeviceScannerEvent.scan() = Scan;
  const factory DeviceScannerEvent.stopScan() = StopScan;
  const factory DeviceScannerEvent.init() = Init;
}
