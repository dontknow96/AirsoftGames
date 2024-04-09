import 'package:controleapp/features/device_controller/blocs/device_controller/device_controller_event.dart';
import 'package:controleapp/features/device_controller/blocs/device_controller/device_controller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeviceControllerBloc
    extends Bloc<DeviceControllerEvent, DeviceControllerState> {
  DeviceControllerBloc(super.initialState) {
    on<Init>(_init);

    add(const Init());
  }

  static const String airsoftServiceUuid =
      'c78d5074-2262-4412-bd9a-c1a3a7ecb113';

  Future<void> _init(Init event, Emitter<DeviceControllerState> emit) async {
    final discoveryTask = emit.forEach(
      state.device.discoverServices().asStream(),
      onData: (services) {
        for (final service in services) {
          if (service.serviceUuid.str ==
              DeviceControllerBloc.airsoftServiceUuid) {
            return state.copyWith(characteristics: service.characteristics);
          }
        }
        return state;
      },
    );

    await discoveryTask;
  }
}
