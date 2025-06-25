import 'package:flutter/material.dart';
import 'package:wallet_hunter/app.dart';
import 'package:wallet_hunter/core/di/injection_container.dart';

Future<void> main()async {
  await init();
  runApp(const App());
}
