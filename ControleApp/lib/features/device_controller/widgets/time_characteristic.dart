import 'package:controleapp/features/device_controller/blocs/time_characteristic/time_characteristic_bloc.dart';
import 'package:controleapp/features/device_controller/blocs/time_characteristic/time_characteristic_event.dart';
import 'package:controleapp/features/device_controller/blocs/time_characteristic/time_characteristic_state.dart';
import 'package:controleapp/features/device_controller/widgets/characteristic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeCharacteristic extends AirsoftCharacteristic {
  const TimeCharacteristic({required super.characteristic, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimeCharacteristicBloc(
        TimeCharacteristicState(
          time: DateTime.fromMicrosecondsSinceEpoch(0),
        ),
        characteristic,
      ),
      child: BlocBuilder<TimeCharacteristicBloc, TimeCharacteristicState>(
        builder: (BuildContext context, TimeCharacteristicState state) {
          final timeCharacteristicBloc = context.read<TimeCharacteristicBloc>();

          return Row(
            children: [
              const Text('Time'),
              Expanded(child: Container()),
              Text(state.time.toString()),
              Expanded(child: Container()),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () => timeCharacteristicBloc.add(const Write()),
                    child: const Text('update'),
                  ),
                  ElevatedButton(
                    onPressed: () => timeCharacteristicBloc.add(const Read()),
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
