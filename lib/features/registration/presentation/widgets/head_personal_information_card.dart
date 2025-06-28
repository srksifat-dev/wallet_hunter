import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';
import 'package:wallet_hunter/core/ui/widgets/app_button.dart';
import 'package:wallet_hunter/core/ui/widgets/app_dropdown.dart';

class HeadPersonalInformationCard extends StatelessWidget {
  const HeadPersonalInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.contact_emergency,
                  color: context.appTheme.primary,
                  size: 30.r,
                ),
                8.pw,
                Text("Personal Information", style: context.texts.button),
              ],
            ),
            16.ph,
            AppButton.outlined(
              height: 44.h,
              onTap: () {},
              borderColor: context.appTheme.inputDecorBorder,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Birth date"), Icon(Icons.calendar_month)],
                  ),
                ],
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: AppDropdown(
                button: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.appTheme.inputDecorBorder,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                items: [
                  AppDropdownItem(value: "A+", label: "A+"),
                  AppDropdownItem(value: "A-", label: "A-"),

                  AppDropdownItem(value: "B+", label: "B+"),
                  AppDropdownItem(value: "B-", label: "B-"),
                  AppDropdownItem(value: "AB+", label: "AB+"),
                  AppDropdownItem(value: "AB-", label: "AB-"),
                  AppDropdownItem(value: "O+", label: "O+"),
                  AppDropdownItem(value: "O-", label: "O-"),
                ],
              ),
            ),
            16.ph,
            TextFormField(
              decoration: context.inputDecor.outlinedInputDecor(
                label: Text("Nature of Duties"),
                hint: "Describe your duties",
              ),
              minLines: 1,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
