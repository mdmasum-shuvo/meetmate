

import 'package:contactbook/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

Widget text_18_800(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.headlineLarge?.copyWith(color: color));
}

Widget text_24_800(String? value,[Color color =textColor]){
  return Text("$value",style:textTheme1.displayLarge?.copyWith(color: color));
}
Widget text_16_700(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.headlineMedium?.copyWith(color: color),textAlign: TextAlign.start,);
}

Widget text_14_700(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.headlineMedium?.copyWith(color: color,fontSize: 14.sp),textAlign: TextAlign.start,);
}

Widget text_12_700(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.bodyLarge?.copyWith(color: color,fontWeight: FontWeight.w700),textAlign: TextAlign.start,);
}

Widget text_16_500(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.headlineSmall?.copyWith(color: color));
}
Widget text_16_400(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.titleSmall?.copyWith(color: color));
}
Widget text_16_600(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.titleLarge?.copyWith(color: color));
}

Widget text_14_400(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.titleMedium?.copyWith(color: color));
}
Widget text_14_500(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.titleMedium?.copyWith(color: color,fontWeight: FontWeight.w500));
}

Widget text_12_400(String? value,[Color color =textColor]){
  return Text("$value",style:textTheme1.bodyLarge?.copyWith(color: color));
}

Widget text_24_700(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.headlineMedium?.copyWith(color: color,fontSize: 24.sp));
}

Widget text_10_400(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.bodyMedium?.copyWith(color: color));
}
