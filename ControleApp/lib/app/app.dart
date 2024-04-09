import 'package:controleapp/features/device_scanner/blocs/device_scanner_bloc.dart';
import 'package:controleapp/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirsoftControleApp extends StatelessWidget {
  const AirsoftControleApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => DeviceScannerBloc()),
      ],
      child: MaterialApp.router(
        routerConfig: AirsoftRouterConfig.createRouter(context),
      ),
    );
  }
}
