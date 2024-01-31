import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppText {
  static Text titleLarge(String text, [Color? color]) => Text(
        text,
        style: TextStyle(
          color: color ?? AppColors.black,
          fontSize: 30.sp,
          fontWeight: FontWeight.w600,
        ),
      );
  static Text titleMedium(String text, [Color? color]) => Text(
        text,
        style: TextStyle(
          color: color ?? AppColors.black,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      );
  static Text titleSmall(String text, {TextStyle style = const TextStyle()}) =>
      Text(
        text,
        style: TextStyle(
          fontSize: 13.sp,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ).merge(style),
      );
  static Text bodyMedium(String text, {TextStyle style = const TextStyle()}) =>
      Text(
        text,
        style: TextStyle(
          fontSize: 15.sp,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ).merge(style),
      );

  /// modify these text
  static Text sp30(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 30.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      );
  static Text sp25(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      );

  static Text sp20(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      );
  static Text sp18(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      );
  static Text sp17(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      );
  static Text sp16(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      );
  static Text sp15(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
      );
  static Text sp13(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
      );
  static Text sp12(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
      );
  static Text sp10(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
      );
  static Text sp8(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
      );
}

extension HtTextExtensions on Text {
  Text copyWith({TextStyle? style, int? maxLines, TextAlign? textAlign}) {
    return Text(
      data ?? "",
      maxLines: maxLines ?? this.maxLines,
      textAlign: textAlign,
      style: this.style?.merge(style),
    );
  }

  Text color(Color color) => copyWith(style: style?.copyWith(color: color));
  Text withOpacity(double opacity) => copyWith(
      style: style!.copyWith(color: style!.color!.withOpacity(opacity)));
  Text get white => copyWith(style: style?.copyWith(color: AppColors.white));
  Text get black => copyWith(style: style?.copyWith(color: AppColors.black));

  Text get centerText => copyWith(textAlign: TextAlign.center);
  Text get w100 =>
      copyWith(style: style?.copyWith(fontWeight: FontWeight.w100));
  Text get w300 =>
      copyWith(style: style?.copyWith(fontWeight: FontWeight.w300));
  Text get w400 =>
      copyWith(style: style?.copyWith(fontWeight: FontWeight.w400));
  Text get w500 =>
      copyWith(style: style?.copyWith(fontWeight: FontWeight.w500));
  Text get w600 =>
      copyWith(style: style?.copyWith(fontWeight: FontWeight.w600));
  Text get w700 =>
      copyWith(style: style?.copyWith(fontWeight: FontWeight.w700));
  Text setMaxLines(int lines) => copyWith(maxLines: lines);
  Text get strikeThrough =>
      copyWith(style: style?.copyWith(decoration: TextDecoration.lineThrough));
}
