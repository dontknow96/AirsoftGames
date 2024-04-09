import 'package:controleapp/features/device_controller/views/device_controller_view.dart';
import 'package:controleapp/features/device_scanner/views/device_scanner_view.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:go_router/go_router.dart';

class AirsoftRouterConfig {
  static const home = '/';
  static const scanner = '/scanner';
  static const flagPostDevice = '/flagpost';

  static List<RouteBase> routes() => [
        GoRoute(
          path: home,
          builder: (_, __) => DeviceScannerView(
            onOpen: (device, context) => GoRouter.of(context).go(
              flagPostDevice,
              extra: device,
            ),
          ),
        ),
        GoRoute(
          path: scanner,
          builder: (_, __) => DeviceScannerView(
            onOpen: (device, context) => GoRouter.of(context).go(
              flagPostDevice,
              extra: device,
            ),
          ),
        ),
        GoRoute(
          path: flagPostDevice,
          builder: (_, state) {
            return DeviceControllerView(
              device: state.extra! as BluetoothDevice,
            );
          },
        ),
      ];

  static GoRouter createRouter() => GoRouter(
        routes: routes(),
      );
}
