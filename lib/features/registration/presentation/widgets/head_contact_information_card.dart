import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

class HeadContactInformationCard extends StatelessWidget {
  const HeadContactInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.contacts, color: context.appTheme.primary),
                8.pw,
                Text("Contact Information", style: context.texts.button),
              ],
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Email"),
                  hint: "Email address",
                ),
              ),
            ),

            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Phone"),
                  hint: "Phone number",
                ),
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Alternate Number"),
                  hint: "Alternate number",
                ),
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Landline"),
                  hint: "Landline number",
                ),
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Social Media Link"),
                  hint: "Social media profile URL",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
