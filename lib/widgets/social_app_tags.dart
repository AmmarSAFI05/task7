import 'package:flutter/material.dart';
import 'package:task7_demo/core/constant/app_sizes.dart';

class SocialAppTags extends StatefulWidget {
  final String text;
  final Color color;
  final Color colortwo;
  final BorderRadius borderRadius;

  const SocialAppTags({
    super.key,
    required this.text,
    required this.color,
    required this.colortwo,
    required this.borderRadius,
  });

  @override
  State<SocialAppTags> createState() => _SocialAppTagsState();
}

class _SocialAppTagsState extends State<SocialAppTags> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.sm(),
        vertical: AppSize.xsm() * 0.3,
      ),
      decoration: BoxDecoration(
        color: widget.colortwo,
        borderRadius: widget.borderRadius,
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.color,
        ),
      ),
    );
  }
}
