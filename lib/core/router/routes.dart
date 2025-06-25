
import 'package:go_router/go_router.dart';
import 'package:wallet_hunter/features/auth/presentation/screens/phone_auth_screen.dart';

extension Convert on String {
  String get p => '/$this';
}

class VisitorRoutes {
  VisitorRoutes._();
  static const phoneAuth = 'phoneAuth';
}

  final router = GoRouter(
    initialLocation: VisitorRoutes.phoneAuth.p,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: VisitorRoutes.phoneAuth,
        path: VisitorRoutes.phoneAuth.p,
        builder: (context, state) => PhoneAuthScreen(),
      ),
    ],
    redirect: (context, state) async {
      return null;
    },
  );
