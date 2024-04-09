import 'package:controleapp/features/device_controller/blocs/time_characteristic/time_characteristic_event.dart';
import 'package:controleapp/features/device_controller/blocs/time_characteristic/time_characteristic_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class TimeCharacteristicBloc
    extends Bloc<TimeCharacteristicEvent, TimeCharacteristicState> {
  TimeCharacteristicBloc(super.initialState, this.characteristic) {
    on<Write>(_write);
    on<Read>(_read);
  }

  final BluetoothCharacteristic characteristic;

  Future<void> _write(Write event, Emitter<TimeCharacteristicState> emit) async {

  }

  Future<void> _read(Read event, Emitter<TimeCharacteristicState> emit) async {

  }
}
