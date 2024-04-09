import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    required this.onConnect,
    required this.scanResult,
    super.key,
  });

  final void Function(BluetoothDevice) onConnect;
  final ScanResult scanResult;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          scanResult.device.advName == ''
              ? scanResult.device.remoteId.str
              : scanResult.device.advName,
        ),
        Expanded(child: Container()),
        ElevatedButton(
          onPressed: () => onConnect(scanResult.device),
          child: const Center(child: Text('connect')),
        ),
      ],
    );
  }
}
