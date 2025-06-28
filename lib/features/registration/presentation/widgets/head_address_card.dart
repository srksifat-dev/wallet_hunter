import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

class HeadAddressCard extends StatelessWidget {
  const HeadAddressCard({super.key});

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
                  Icons.location_on,
                  color: context.appTheme.primary,
                  size: 30.r,
                ),
                8.pw,
                Text("Address", style: context.texts.button),
              ],
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("Flat No"),
                        hint: "Flat number",
                      ),
                    ),
                  ),
                  16.pw,
                  Expanded(
                    child: TextFormField(
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("Building"),
                        hint: "Building name",
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
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Street"),
                  hint: "Street name",
                ),
              ),
            ),
            16.ph,
            SizedBox(
              height: 44.h,
              child: TextFormField(
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Landmark"),
                  hint: "Nearby landmark",
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
                        label: Text("City"),
                        hint: "City",
                      ),
                    ),
                  ),
                  16.pw,
                  Expanded(
                    child: TextFormField(
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("District"),
                        hint: "District",
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
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("State"),
                        hint: "State",
                      ),
                    ),
                  ),
                  16.pw,
                  Expanded(
                    child: TextFormField(
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("Native City"),
                        hint: "Native city",
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
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("Native State"),
                        hint: "Native State",
                      ),
                    ),
                  ),
                  16.pw,
                  Expanded(
                    child: TextFormField(
                      decoration: context.inputDecor.outlinedInputDecor(
                        label: Text("Country"),
                        hint: "Country",
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
                decoration: context.inputDecor.outlinedInputDecor(
                  label: Text("Pincode"),
                  hint: "Pincode",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
