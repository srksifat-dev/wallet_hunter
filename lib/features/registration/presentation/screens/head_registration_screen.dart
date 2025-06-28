import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';
import 'package:wallet_hunter/core/router/routes.dart';
import 'package:wallet_hunter/core/ui/widgets/app_button.dart';
import 'package:wallet_hunter/core/ui/widgets/app_dropdown.dart';
import 'package:wallet_hunter/core/ui/widgets/input_title.dart';
import 'package:wallet_hunter/features/registration/presentation/widgets/head_address_card.dart';
import 'package:wallet_hunter/features/registration/presentation/widgets/head_contact_information_card.dart';
import 'package:wallet_hunter/features/registration/presentation/widgets/head_personal_information_card.dart';
import 'package:wallet_hunter/features/registration/presentation/widgets/head_profile_summary_card.dart';

class HeadRegistrationScreen extends StatelessWidget {
  const HeadRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appTheme.primary,
        foregroundColor: context.appTheme.background,
        title: Text(
          "Head Registration",
          style: context.texts.button.copyWith(
            color: context.appTheme.background,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeadProfileSummaryCard(),
              16.ph,
              HeadPersonalInformationCard(),
              16.ph,
              HeadContactInformationCard(),
              16.ph,
              HeadAddressCard(),
              16.ph,
              AppButton.filled(
                onTap: () {
                  context.pushNamed(Routes.associatedTemples);
                },
                label: "Continue",
              ),
              32.ph,
            ],
          ),
        ),
      ),
    );
  }
}
