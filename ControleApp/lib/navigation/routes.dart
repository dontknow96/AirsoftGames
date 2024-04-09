import 'package:controleapp/features/device_scanner/views/device_scanner_view.dart';
import 'package:controleapp/features/flagpost_device/views/flagpost_device_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AirsoftRouterConfig {
  static const home = '/';
  static const scanner = '/scanner';
  static const flagPostDevice = '/flagpost';

  static List<RouteBase> routes(BuildContext context) => [
        GoRoute(
          path: home,
          builder: (_, __) => DeviceScannerView(
            onConnect: (device) => GoRouter.of(context).go(
              flagPostDevice,
              extra: device,
            ),
          ),
        ),
        GoRoute(
          path: scanner,
          builder: (_, __) => DeviceScannerView(
            onConnect: (device) => GoRouter.of(context).go(
              flagPostDevice,
              extra: device,
            ),
          ),
        ),
        GoRoute(
          path: flagPostDevice,
          builder: (_, __) => const FlagpostDeviceView(),
        ),
      ];

  static GoRouter createRouter(BuildContext context) => GoRouter(
        routes: routes(context),
      );
}
