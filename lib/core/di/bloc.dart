part of 'injection_container.dart';

Future<void> _initBlocs() async {
  sl.registerFactory(() => ThemeBloc());
}
