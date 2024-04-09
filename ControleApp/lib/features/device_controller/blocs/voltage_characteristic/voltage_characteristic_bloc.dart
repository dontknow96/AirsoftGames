import 'dart:typed_data';

import 'package:controleapp/features/device_controller/blocs/voltage_characteristic/voltage_characteristic_event.dart';
import 'package:controleapp/features/device_controller/blocs/voltage_characteristic/voltage_characteristic_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class VoltageCharacteristicBloc
    extends Bloc<VoltageCharacteristicEvent, VoltageCharacteristicState> {
  VoltageCharacteristicBloc(super.initialState, this.characteristic) {
    on<Read>(_read);
  }
  final BluetoothCharacteristic characteristic;

  Future<void> _read(Read event, Emitter<VoltageCharacteristicState> emit) async {
    final result = await characteristic.read();
    final payload = Uint8List.fromList(result);

    final voltage = ByteData.view(payload.buffer).getFloat32(0);

    emit(state.copyWith(voltage: voltage));
  }
}
