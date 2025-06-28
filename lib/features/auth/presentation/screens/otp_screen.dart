import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';
import 'package:wallet_hunter/core/router/routes.dart';
import 'package:wallet_hunter/core/ui/theme.dart';
import 'package:wallet_hunter/core/ui/widgets/app_button.dart';

class OtpScreen extends StatelessWidget {
  final String phoneNumber;
  OtpScreen({required this.phoneNumber, Key? key}) : super(key: key);
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 24,
      color: ColorConst.hunterBlue,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: ColorConst.blackText),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: context.appTheme.primary),
      borderRadius: BorderRadius.circular(12),
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: context.appTheme.primary),
      borderRadius: BorderRadius.circular(12),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.appTheme.primary.withValues(alpha: 0.1),
              context.appTheme.background,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            AppBar(backgroundColor: context.appTheme.transparent),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Text("Verification Code", style: context.texts.headline1),
                  Text("We have sent the verification code to $phoneNumber"),
                  50.ph,
                  Pinput(
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    validator: (s) {},
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                  50.ph,
                  AppButton.filled(
                    onTap: () {
                      context.pushNamed(Routes.headRegistration);
                    },
                    label: "Verify OTP",
                  ),
                  16.ph,
                  AppButton.outlined(
                    onTap: () {},
                    label: "Resend OTP",
                    labelTextStyle: context.texts.button.copyWith(
                      color: context.appTheme.primary,
                    ),
                    borderColor: context.appTheme.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
