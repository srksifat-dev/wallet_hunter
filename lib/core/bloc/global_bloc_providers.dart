import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_hunter/core/di/injection_container.dart' as di;
import 'package:wallet_hunter/core/ui/theme/theme_bloc.dart';

class GlobalBlocProviders {
  dynamic providers = [
    BlocProvider(create: (_) => di.sl<ThemeBloc>()),
  ];
}
 