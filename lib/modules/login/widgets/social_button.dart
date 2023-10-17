import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePath;
  final String label;

  const SocialButtonWidget({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            color: AppTheme.colors.border,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
              width: 57,
              height: 57,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 16),
                  Image.asset(imagePath),
                  const SizedBox(width: 16),
                  Container(
                    width: 1,
                    color: AppTheme.colors.border,
                  ),
                ],
              )),
          Expanded(
            child: Container(),
          ),
          Text(
            label,
            style: AppTheme.textStyles.button,
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
