import 'package:controleapp/features/device_scanner/blocs/device_scanner_bloc.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_event.dart';
import 'package:controleapp/features/device_scanner/blocs/device_scanner_state.dart';
import 'package:controleapp/features/device_scanner/widgets/device_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeviceScannerView extends StatelessWidget {
  const DeviceScannerView({required this.deviceSiteRoute, super.key});

  final String deviceSiteRoute;

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
              for (final item in state.devices)
                DeviceTile(
                  deviceIdentifier: item.device.remoteId,
                  deviceName: item.device.advName,
                  deviceSiteRoute: deviceSiteRoute,
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
