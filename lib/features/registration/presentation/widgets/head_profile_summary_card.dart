import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';
import 'package:wallet_hunter/core/ui/widgets/app_dropdown.dart';

class HeadProfileSummaryCard extends StatelessWidget {
  const HeadProfileSummaryCard({super.key});

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
                  Icons.account_circle,
                  color: context.appTheme.primary,
                  size: 30.r,
                ),
                8.pw,
                Text("Profile Summary", style: context.texts.button),
              ],
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Full Name"),
                  hint: "Enter your full name",
                ),
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("Age"),
                        hint: "Age",
                      ),
                    ),
                  ),
                  16.pw,
                  Expanded(
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
                        AppDropdownItem(value: "Male", label: "Male"),
                        AppDropdownItem(value: "Female", label: "Female"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: Row(
                children: [
                  Expanded(
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
                        AppDropdownItem(value: "Single", label: "Single"),
                        AppDropdownItem(value: "Married", label: "Married"),

                        AppDropdownItem(value: "Devorced", label: "Devorced"),
                        AppDropdownItem(value: "Widowed", label: "Widowed"),
                      ],
                    ),
                  ),
                  16.pw,
                  Expanded(
                    child: TextFormField(
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("Occupation"),
                        hint: "Occupation",
                      ),
                    ),
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
                  AppDropdownItem(value: "Single", label: "Single"),
                  AppDropdownItem(value: "Married", label: "Married"),

                  AppDropdownItem(value: "Devorced", label: "Devorced"),
                  AppDropdownItem(value: "Widowed", label: "Widowed"),
                ],
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Qualification"),
                  hint: "Highest qualification",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
