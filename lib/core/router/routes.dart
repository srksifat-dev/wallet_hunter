import 'package:go_router/go_router.dart';
import 'package:wallet_hunter/features/auth/presentation/screens/otp_screen.dart';
import 'package:wallet_hunter/features/auth/presentation/screens/phone_auth_screen.dart';
import 'package:wallet_hunter/features/registration/presentation/screens/associated_temples_screen.dart';
import 'package:wallet_hunter/features/registration/presentation/screens/head_registration_screen.dart';
import 'package:wallet_hunter/features/registration/presentation/screens/member_registration_screen.dart';
import 'package:wallet_hunter/features/registration/presentation/screens/family_tree_screen.dart';

extension Convert on String {
  String get p => '/$this';
}

class Routes {
  Routes._();
  static const phoneAuth = 'phoneAuth';
  static const otp = 'otp';
  static const headRegistration = "head-registration";
  static const associatedTemples = "associated-temples";
  static const memberRegistration = "member-registration";
  static const familyTree = "family-tree";
}

final router = GoRouter(
  initialLocation: Routes.phoneAuth.p,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: Routes.phoneAuth,
      path: Routes.phoneAuth.p,
      builder: (context, state) => PhoneAuthScreen(),
    ),
    GoRoute(
      name: Routes.otp,
      path: Routes.otp.p,
      builder: (context, state) =>
          OtpScreen(phoneNumber: state.extra as String),
    ),
    GoRoute(
      name: Routes.headRegistration,
      path: Routes.headRegistration.p,
      builder: (context, state) => HeadRegistrationScreen(),
    ),
    GoRoute(
      name: Routes.associatedTemples,
      path: Routes.associatedTemples.p,
      builder: (context, state) => AssociatedTemplesScreen(),
    ),
    GoRoute(
      name: Routes.memberRegistration,
      path: Routes.memberRegistration.p,
      builder: (context, state) => MemberRegistrationScreen(),
    ),
    GoRoute(
      name: Routes.familyTree,
      path: Routes.familyTree.p,
      builder: (context, state) => FamilyTreeScreen(),
    ),
  ],
  redirect: (context, state) async {
    return null;
  },
);
