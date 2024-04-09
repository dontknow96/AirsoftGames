import 'dart:typed_data';

import 'package:controleapp/features/device_controller/blocs/time_characteristic/time_characteristic_event.dart';
import 'package:controleapp/features/device_controller/blocs/time_characteristic/time_characteristic_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class VoltageCharacteristicBloc
    extends Bloc<TimeCharacteristicEvent, TimeCharacteristicState> {
  VoltageCharacteristicBloc(super.initialState, this.characteristic) {
    on<Write>(_write);
    on<Read>(_read);
  }

  final BluetoothCharacteristic characteristic;

  Future<void> _write(
    Write event,
    Emitter<TimeCharacteristicState> emit,
  ) async {

    final now = DateTime.now();
    //this is a bit hacky but i dont see a better way
    final nowUtc = DateTime.utc(
        now.year, now.month, now.day, now.hour, now.minute, now.second);

    final secondsSinceEpoch = nowUtc.millisecondsSinceEpoch ~/ 1000;
    final payload = Uint8List(8);
    ByteData.view(payload.buffer).setUint64(0, secondsSinceEpoch);

    await characteristic.write(payload);
    add(const Read());
  }

  Future<void> _read(Read event, Emitter<TimeCharacteristicState> emit) async {
    final result = await characteristic.read();
    final payload = Uint8List.fromList(result);

    final secondsSinceEpoch = ByteData.view(payload.buffer).getUint64(0);

    final newTime = DateTime.fromMillisecondsSinceEpoch(
      secondsSinceEpoch * 1000,
      isUtc: true,
    );

    emit(state.copyWith(time: newTime));
  }
}
