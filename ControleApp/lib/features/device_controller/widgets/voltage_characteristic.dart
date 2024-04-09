import 'package:controleapp/features/device_controller/blocs/voltage_characteristic/voltage_characteristic_bloc.dart';
import 'package:controleapp/features/device_controller/blocs/voltage_characteristic/voltage_characteristic_event.dart';
import 'package:controleapp/features/device_controller/blocs/voltage_characteristic/voltage_characteristic_state.dart';
import 'package:controleapp/features/device_controller/widgets/characteristic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VoltageCharacteristic extends AirsoftCharacteristic {
  const VoltageCharacteristic({required super.characteristic, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => VoltageCharacteristicBloc(
        const VoltageCharacteristicState(voltage: 0),
        characteristic,
      ),
      child: BlocBuilder<VoltageCharacteristicBloc, VoltageCharacteristicState>(
        builder: (BuildContext context, VoltageCharacteristicState state) {
          final voltageCharacteristicBloc =
              context.read<VoltageCharacteristicBloc>();

          return Row(
            children: [
              const Text('voltage'),
              Expanded(child: Container()),
              Text(state.voltage.toString()),
              Expanded(child: Container()),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        voltageCharacteristicBloc.add(const Read()),
                    child: const Text('read'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
