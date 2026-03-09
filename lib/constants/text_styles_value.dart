import 'package:flutter/material.dart';
import 'package:lab8/constants/colors.dart';

class AppTextStyles {
  static final TextStyle title = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  );

  static final TextStyle subtitle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGreyColor,
  );

  static final TextStyle body = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.Azure,
  );
}