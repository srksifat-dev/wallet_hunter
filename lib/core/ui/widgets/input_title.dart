import 'package:flutter/widgets.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

class InputTitle extends StatelessWidget {
  const InputTitle({
    super.key,
    required this.title,
    this.isRequired = true,
    this.textStyle,
  });

  final String title;
  final TextStyle? textStyle;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: title, style: textStyle ?? context.texts.bodyText2),
          if (isRequired)
            TextSpan(
              text: '*',
              style: context.texts.bodyText2.copyWith(
                color: context.appTheme.error,
              ),
            ),
        ],
      ),
    );
  }
}
