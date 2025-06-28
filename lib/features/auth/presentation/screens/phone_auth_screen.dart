import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';
import 'package:wallet_hunter/core/router/routes.dart';
import 'package:wallet_hunter/core/ui/widgets/app_button.dart';
import 'package:wallet_hunter/core/ui/widgets/input_title.dart';

class PhoneAuthScreen extends StatelessWidget {
  PhoneAuthScreen({Key? key}) : super(key: key);

  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            150.ph,
            Column(
              children: [
                Icon(Icons.wallet, color: context.appTheme.primary, size: 40.w),
                Text("Wallet Hunter", style: context.texts.headline2),
                Text(
                  "Connect with your community",
                  style: context.texts.caption2,
                ),
              ],
            ),
            Spacer(),
            TextFormField(
              controller: phoneNumberController,
              decoration: context.inputDecor.outlinedInputDecor(
                prefix: Icon(Icons.phone, color: context.appTheme.lightText),
                hint: "Enter your mobile number",
              ),
              keyboardType: TextInputType.phone,
            ),
            16.ph,
            AppButton.filled(
              height: 40.h,
              onTap: () {
                context.pushNamed(
                  Routes.otp,
                  extra: phoneNumberController.text,
                );
              },
              label: "Send OTP",
            ),
            Spacer(),
            Column(
              children: [
                Text("By continuing, you agree to our"),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Terms of Service",
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: context.texts.caption2.copyWith(
                          color: context.appTheme.primary,
                        ),
                      ),
                      TextSpan(text: " and ", style: context.texts.caption2),
                      TextSpan(
                        text: "Privacy Policy",
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: context.texts.caption2.copyWith(
                          color: context.appTheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            100.ph,
          ],
        ),
      ),
    );
  }
}
