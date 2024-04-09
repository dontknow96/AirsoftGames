import 'dart:async';

import 'package:controleapp/features/device_scanner/blocs/device_scanner_event.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceScannerBloc extends Bloc<DeviceScannerEvent, DeviceScannerState> {
  DeviceScannerBloc() : super(const DeviceScannerState()) {
    on<Scan>(_scan);
    on<StopScan>(_stopScan);
    on<Init>(_init);

    add(const Init());
  }

  FutureOr<void> _scan(Scan event, Emitter<DeviceScannerState> emit) async {
    await FlutterBluePlus.startScan(
      timeout: const Duration(seconds: 15),
    );
  }

  FutureOr<void> _stopScan(
    StopScan event,
    Emitter<DeviceScannerState> emit,
  ) async {
    await FlutterBluePlus.stopScan();
  }

  FutureOr<void> _init(
    Init event,
    Emitter<DeviceScannerState> emit,
  ) async {
    final scanTask = emit.forEach(
      FlutterBluePlus.scanResults,
      onData: (devices) => state.copyWith(devices: devices),
    );

    final isScanningTask = emit.forEach(
      FlutterBluePlus.isScanning,
      onData: (scanning) => state.copyWith(scanning: scanning),
    );

    await scanTask;
    await isScanningTask;
  }
}