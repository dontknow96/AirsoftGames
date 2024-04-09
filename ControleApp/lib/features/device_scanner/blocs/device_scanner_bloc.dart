import 'dart:async';

import 'package:controleapp/features/device_scanner/blocs/device_scanner_event.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceScannerBloc extends Bloc<DeviceScannerEvent, DeviceScannerState> {
  DeviceScannerBloc() : super(const DeviceScannerState()) {
    on<Scan>(_scan);
    on<StopScan>(_stopScan);
    on<Connect>(_connect);
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

  FutureOr<void> _connect(
    Connect event,
    Emitter<DeviceScannerState> emit,
  ) async {
    emit(state.copyWith(connecting: true));

    try{
      await event.device.connect(timeout: const Duration(seconds: 3));
    }catch(e){
      //didnt work for whatever reason
    }

    emit(
      state.copyWith(
        connectedDevices: FlutterBluePlus.connectedDevices,
        connecting: false,
      ),
    );
  }

  FutureOr<void> _init(
    Init event,
    Emitter<DeviceScannerState> emit,
  ) async {
    final scanTask = emit.forEach(
      FlutterBluePlus.scanResults,
      onData: (devices) => state.copyWith(
        foundDevices: devices.map<BluetoothDevice>((e) => e.device),
      ),
    );

    final isScanningTask = emit.forEach(
      FlutterBluePlus.isScanning,
      onData: (scanning) => state.copyWith(scanning: scanning),
    );

    emit(state.copyWith(connectedDevices: FlutterBluePlus.connectedDevices));

    await scanTask;
    await isScanningTask;
  }
}
