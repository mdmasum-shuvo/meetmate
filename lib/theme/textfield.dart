
import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textField(String title,String hint,TextEditingController controller){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    text_14_700(title),
    SizedBox(height: 4,),
    TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
      ),
    ),
      SizedBox(height: 12,)
  ],);
}


Widget dateField(String title,String hint,TextEditingController controller){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    text_14_700(title),
    SizedBox(height: 4,),
    TextFormField(
      keyboardType: TextInputType.text,
      readOnly: true,
      decoration: InputDecoration(
        hintText: hint,suffixIcon: const Icon(Icons.calendar_month_outlined,color: textColor,)
      ),
    ),
      SizedBox(height: 12,)
  ],);
}
Widget timeField(String title,String hint,TextEditingController controller){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    text_14_700(title),
    SizedBox(height: 4,),
    TextFormField(
      keyboardType: TextInputType.text,
      readOnly: true,
      decoration: InputDecoration(
        hintText: hint,suffixIcon: const Icon(Icons.watch_later_outlined,color: textColor,)
      ),
    ),
      SizedBox(height: 12,)
  ],);
}