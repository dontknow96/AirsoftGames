import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_scanner_event.freezed.dart';

@freezed
class DeviceScannerEvent with _$DeviceScannerEvent{
  const factory DeviceScannerEvent.scan() = Scan;
  const factory DeviceScannerEvent.stopScan() = StopScan;
  const factory DeviceScannerEvent.init() = Init;
  const factory DeviceScannerEvent.connect(BluetoothDevice device) = Connect;
  const factory DeviceScannerEvent.disconnect(BluetoothDevice device) = Disconnect;
}
