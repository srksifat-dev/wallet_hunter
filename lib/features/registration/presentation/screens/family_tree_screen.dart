import 'package:flutter/material.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

class FamilyTreeScreen extends StatelessWidget {
  const FamilyTreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appTheme.primary,
        foregroundColor: context.appTheme.background,
        title: Text(
          "Family Tree",
          style: context.texts.button.copyWith(
            color: context.appTheme.background,
          ),
        ),
      ),
      body: Column(children: [
               
        ],
      ),
    );
  }
}
