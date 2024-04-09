import 'package:controleapp/features/device_scanner/blocs/device_scanner_bloc.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_event.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_state.dart';
import 'package:controleapp/features/device_scanner/widgets/device_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceScannerView extends StatelessWidget {
  const DeviceScannerView({required this.onOpen, super.key});

  final void Function(BluetoothDevice, BuildContext) onOpen;

  @override
  Widget build(BuildContext context) {
    final deviceScannerBloc = context.read<DeviceScannerBloc>();

    return BlocBuilder<DeviceScannerBloc, DeviceScannerState>(
      builder: (BuildContext context, DeviceScannerState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Find Devices'),
          ),
          body: Column(
            children: [
              for (final device in state.connectedDevices)
                DeviceTile(
                  onOpen: onOpen,
                  device: device,
                ),
              for (final device in state.foundDevices.where((element) => !state.connectedDevices.contains(element)))
                DeviceTile(
                  onOpen: onOpen,
                  device: device,
                ),
            ],
          ),
          floatingActionButton: state.scanning
              ? FloatingActionButton(
                  onPressed: () => deviceScannerBloc.add(const StopScan()),
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.stop),
                )
              : FloatingActionButton(
                  onPressed: () => deviceScannerBloc.add(const Scan()),
                  child: const Text('SCAN'),
                ),
        );
      },
    );
  }
}
