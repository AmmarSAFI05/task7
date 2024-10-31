
import 'package:flutter/cupertino.dart';
import 'package:task7_demo/core/text_styles.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_fonts.dart';
import '../../../core/constant/app_sizes.dart';

class TagWidget extends StatelessWidget {
  final String text;
  final Color color;

  const TagWidget({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.sm() * 0.5, vertical: AppSize.sm() * 0.25),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(AppSize.borderRadiusSm() * 0.25),
        ),
        child: Text(text,
            style: AppTextStyles.tagStyle));
  }


}

