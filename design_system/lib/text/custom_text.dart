import 'package:design_system/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;

  const CustomText({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight,
    this.size,
    this.style,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          TextStyle(
            color: color,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: size ?? 14.0,
          ),
      textAlign: align,
    );
  }
}
