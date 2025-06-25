import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/bloc/global_bloc_providers.dart';
import 'package:wallet_hunter/core/router/routes.dart';
import 'package:wallet_hunter/core/ui/theme/theme_bloc.dart';
import 'package:wallet_hunter/core/ui/theme/theme_state.dart';

class App extends StatelessWidget {
const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: const Size(375, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MultiBlocProvider(
        providers: GlobalBlocProviders().providers,
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              title: 'Wallet Hunter',
              theme: state.themeData,
              routerConfig: router,
            );
          }
        ),
      ),
    );
  }
}