import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget participantItem(String name,Function() onRemove) {
  return Card(
      color: primaryColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: primaryDarkColor, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            text_14_400(name,Colors.white),
            GestureDetector(
              onTap: (){
                onRemove();
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            )
          ],
        ),
      ));
}
