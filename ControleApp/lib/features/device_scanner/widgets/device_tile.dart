import 'package:controleapp/features/device_scanner/blocs/device_scanner_bloc.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_event.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    required this.onOpen,
    required this.device,
    required this.enabled,
    super.key,
  });

  final void Function(BluetoothDevice, BuildContext) onOpen;
  final BluetoothDevice device;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final deviceScannerBloc = context.read<DeviceScannerBloc>();

    return BlocBuilder<DeviceScannerBloc, DeviceScannerState>(
      builder: (BuildContext context, DeviceScannerState state) {
        return Row(
          children: [
            Text(
              device.advName == ''
                  ? device.remoteId.str
                  : device.advName,
            ),
            Expanded(child: Container()),
            if (device.isConnected)
              ElevatedButton(
                onPressed: () => onOpen(device, context),
                child: const Center(child: Text('open')),
              )
            else
              ElevatedButton(
                onPressed: () => enabled ? deviceScannerBloc.add(Connect(device)) : null,
                child: const Center(child: Text('connect')),
              ),
          ],
        );
      },
    );
  }
}
