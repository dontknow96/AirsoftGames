import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:go_router/go_router.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    required this.deviceIdentifier,
    required this.deviceSiteRoute,
    required this.deviceName, super.key,
  });

  final String deviceSiteRoute;
  final DeviceIdentifier deviceIdentifier;
  final String deviceName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(deviceName == '' ? deviceIdentifier.str : deviceName),
        Expanded(child: Container()),
        ElevatedButton(
          onPressed: () => _onPress(context),
          child: const Center(child: Text('connect')),
        ),
      ],
    );
  }

  void _onPress(BuildContext context) {
    GoRouter.of(context).go('$deviceSiteRoute/$deviceIdentifier');
  }
}
