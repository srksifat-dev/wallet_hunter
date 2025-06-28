import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';
import 'package:wallet_hunter/core/ui/widgets/app_button.dart';
import 'package:wallet_hunter/core/ui/widgets/app_dropdown.dart';

class MemberRegistrationScreen extends StatelessWidget {
  const MemberRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appTheme.primary,
        foregroundColor: context.appTheme.background,
        title: Text(
          "Family Registration",
          style: context.texts.button.copyWith(
            color: context.appTheme.background,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          16.ph,
                          Text(
                            "Add Family Members",
                            style: context.texts.button,
                          ),
                          Text(
                            "Add details of your family members",
                            style: context.texts.caption2.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          16.ph,
                        ],
                      ),
                      childCount: 1,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => Card(
                        margin: EdgeInsets.only(bottom: 16.h),
                        child: Padding(
                          padding: EdgeInsets.all(16.r),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Family Member #${index + 1}",
                                    style: context.texts.button,
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: context.appTheme.error,
                                  ),
                                ],
                              ),
                              16.ph,
                              SizedBox(
                                height: 44.h,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("First Name"),
                                              hint: "First Name",
                                            ),
                                      ),
                                    ),
                                    16.pw,
                                    Expanded(
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Last Name"),
                                              hint: "Last Name ",
                                            ),
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
                                      child: AppButton.outlined(
                                        height: 44.h,
                                        onTap: () {},
                                        borderColor:
                                            context.appTheme.inputDecorBorder,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("Birth date"),
                                                Icon(Icons.calendar_month),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    16.pw,
                                    Expanded(
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Age"),
                                              hint: "Age",
                                            ),
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
                                              color: context
                                                  .appTheme
                                                  .inputDecorBorder,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
                                          ),
                                        ),
                                        items: [
                                          AppDropdownItem(
                                            value: "Male",
                                            label: "Male",
                                          ),
                                          AppDropdownItem(
                                            value: "Female",
                                            label: "Female",
                                          ),
                                        ],
                                      ),
                                    ),
                                    16.pw,
                                    Expanded(
                                      child: AppDropdown(
                                        button: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: context
                                                  .appTheme
                                                  .inputDecorBorder,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
                                          ),
                                        ),
                                        items: [
                                          AppDropdownItem(
                                            value: "Single",
                                            label: "Single",
                                          ),
                                          AppDropdownItem(
                                            value: "Married",
                                            label: "Married",
                                          ),

                                          AppDropdownItem(
                                            value: "Devorced",
                                            label: "Devorced",
                                          ),
                                          AppDropdownItem(
                                            value: "Widowed",
                                            label: "Widowed",
                                          ),
                                        ],
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
                                        color:
                                            context.appTheme.inputDecorBorder,
                                      ),
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                  items: [
                                    AppDropdownItem(
                                      value: "Spouse",
                                      label: "Spouse",
                                    ),
                                    AppDropdownItem(value: "Son", label: "Son"),

                                    AppDropdownItem(
                                      value: "Daughter",
                                      label: "Daughter",
                                    ),
                                    AppDropdownItem(
                                      value: "Father",
                                      label: "Father",
                                    ),
                                    AppDropdownItem(
                                      value: "Father",
                                      label: "Father",
                                    ),
                                    AppDropdownItem(
                                      value: "Mother",
                                      label: "Mother",
                                    ),
                                    AppDropdownItem(
                                      value: "Brother",
                                      label: "Brother",
                                    ),
                                    AppDropdownItem(
                                      value: "Sister",
                                      label: "Sister",
                                    ),
                                    AppDropdownItem(
                                      value: "Other",
                                      label: "Other",
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
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Qualification"),
                                              hint: "Qualification",
                                            ),
                                      ),
                                    ),
                                    16.pw,
                                    Expanded(
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Occupation"),
                                              hint: "Occupation",
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              16.ph,
                              TextFormField(
                                decoration: context.inputDecor
                                    .outlinedInputDecor(
                                      label: Text("Nature of Duties"),
                                      hint: "Describe your duties",
                                    ),
                                minLines: 1,
                                maxLines: 5,
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
                                              color: context
                                                  .appTheme
                                                  .inputDecorBorder,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
                                          ),
                                        ),
                                        items: [
                                          AppDropdownItem(
                                            value: "A+",
                                            label: "A+",
                                          ),
                                          AppDropdownItem(
                                            value: "A-",
                                            label: "A-",
                                          ),

                                          AppDropdownItem(
                                            value: "B+",
                                            label: "B+",
                                          ),
                                          AppDropdownItem(
                                            value: "B-",
                                            label: "B-",
                                          ),
                                          AppDropdownItem(
                                            value: "AB+",
                                            label: "AB+",
                                          ),
                                          AppDropdownItem(
                                            value: "AB-",
                                            label: "AB-",
                                          ),
                                          AppDropdownItem(
                                            value: "O+",
                                            label: "O+",
                                          ),
                                          AppDropdownItem(
                                            value: "O-",
                                            label: "O-",
                                          ),
                                        ],
                                      ),
                                    ),
                                    16.pw,
                                    Expanded(
                                      child: AppButton.outlined(
                                        height: 44.h,
                                        onTap: () {},
                                        borderColor:
                                            context.appTheme.inputDecorBorder,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.camera_alt),
                                                8.pw,
                                                Text("Upload"),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              16.ph,
                              Row(
                                children: [
                                  Text(
                                    "Contact Information",
                                    style: context.texts.bodyText1.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              16.ph,
                              SizedBox(
                                height: 44.h,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Phone"),
                                              hint: "Phone number",
                                            ),
                                      ),
                                    ),
                                    16.pw,
                                    Expanded(
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Alt Number"),
                                              hint: "Alternate number",
                                            ),
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
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Landline"),
                                              hint: "Landline number",
                                            ),
                                      ),
                                    ),
                                    16.pw,
                                    Expanded(
                                      child: TextFormField(
                                        decoration: context.inputDecor
                                            .outlinedInputDecor(
                                              label: Text("Email"),
                                              hint: "Email address",
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              16.ph,
                              SizedBox(
                                height: 44.h,
                                child: TextFormField(
                                  decoration: context.inputDecor
                                      .outlinedInputDecor(
                                        label: Text("Social Media Link"),
                                        hint: "Social media profile URL",
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      childCount: 2,
                    ),
                  ),
                ],
              ),
            ),
            8.ph,
            AppButton.outlined(
              height: 44.h,
              onTap: () {},
              borderColor: context.appTheme.inputDecorBorder,
              prefix: Icon(Icons.add, color: context.appTheme.primary),
              label: "Add Another Family Member",
              labelTextStyle: context.texts.button.copyWith(
                color: context.appTheme.primary,
              ),
            ),
            16.ph,
            AppButton.filled(
              height: 44.h,
              onTap: () {},
              bgColor: context.appTheme.primary,
              fgColor: context.appTheme.background,
              label: "View Family Tree",
            ),
            32.ph,
          ],
        ),
      ),
    );
  }
}
