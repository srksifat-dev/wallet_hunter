

import 'package:get_it/get_it.dart';
import 'package:wallet_hunter/core/ui/theme/theme_bloc.dart';
import 'package:wallet_hunter/core/ui/theme/theme_state.dart';

part 'bloc.dart';
part 'data_source.dart';
part 'repository.dart';
part 'use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Bloc
  await _initBlocs();

  /// UseCase
  await _initUseCases();

  /// Repository
  await _initRepositories();

  /// Datasource
  await _initDataSources();

  /// Network
  // final restClient = RestClient();
  // sl.registerLazySingleton(
  //   () => restClient,
  // );
}
