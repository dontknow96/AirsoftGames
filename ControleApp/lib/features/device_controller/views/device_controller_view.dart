import 'package:controleapp/features/device_controller/blocs/device_controller/device_controller_bloc.dart';
import 'package:controleapp/features/device_controller/blocs/device_controller/device_controller_state.dart';
import 'package:controleapp/features/device_controller/widgets/characteristic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceControllerView extends StatelessWidget {
  const DeviceControllerView({required this.device, super.key});

  final BluetoothDevice device;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          DeviceControllerBloc(DeviceControllerState(device: device)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Find Devices'),
        ),
        body: BlocBuilder<DeviceControllerBloc, DeviceControllerState>(
          builder: (BuildContext context, state) {
            return Column(
              children: [
                for(final characteristic in state.characteristics)
                  AirsoftCharacteristicTile(characteristic: characteristic),
              ],
            );
          },
        ),
      ),
    );
  }
}
