import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_scanner_state.freezed.dart';

@freezed
class DeviceScannerState with _$DeviceScannerState {
  const factory DeviceScannerState({
    @Default([]) Iterable<ScanResult> devices,
    @Default(false) bool scanning,
    @Default(DeviceScannerErrorState.none) DeviceScannerErrorState errorState ,
  }) = _DeviceScannerState;
}

enum DeviceScannerErrorState{
  none,
  turnedOff,
}
