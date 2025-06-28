import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';
import 'package:wallet_hunter/core/router/routes.dart';
import 'package:wallet_hunter/core/ui/widgets/app_button.dart';

class AssociatedTemplesScreen extends StatelessWidget {
  const AssociatedTemplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appTheme.primary,
        foregroundColor: context.appTheme.background,
        title: Text(
          "Associated Temples",
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
                      (context, _) => 16.ph,
                      childCount: 1,
                    ),
                  ),

                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Card(
                        margin: EdgeInsets.only(bottom: 16.h),
                        child: Column(
                          children: [
                            Container(
                              height: 160.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: context.appTheme.primary.withValues(
                                  alpha: 0.5,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.r),
                                  topRight: Radius.circular(12.r),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.r),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Temple Name",
                                        style: context.texts.button,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: context.appTheme.primary,
                                          ),
                                          Text(
                                            "Address",
                                            style: context.texts.caption2,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(4.r),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            16.r,
                                          ),
                                        ),

                                        child: Text("Branch Temple"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }, childCount: 5),
                  ),
                ],
              ),
            ),
            16.ph,
            AppButton.filled(
              onTap: () {
                context.pushNamed(Routes.familyTree);
              },
              label: "Continue",
            ),
            32.ph,
          ],
        ),
      ),
    );
  }
}
