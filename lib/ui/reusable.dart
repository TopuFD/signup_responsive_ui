import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableCode {
  myTextFormField(controller, obsureText,hintmsg,lablemsg) {
    return TextFormField(
      controller: controller,
      obscureText: obsureText,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintmsg,
        labelText: lablemsg,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r)
        )
      ),
    );
  }
}
