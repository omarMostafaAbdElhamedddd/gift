import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart';


InputDecoration buildInputDecoration({required String hintText,bool fill = false ,
  Color fillColor=Colors.white,
  Widget? suffixIcon ,Widget? prefixIcon , double hintFontsize = 8}) {
  return
    InputDecoration(


      errorStyle: TextStyle(
        color: Colors.red,
        fontSize: 8,
        fontFamily: mainFont
      ),

      suffixIcon: suffixIcon,
      alignLabelWithHint: true,
      prefixIcon: prefixIcon,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15 , horizontal: 16),

      hintStyle: TextStyle(
          fontFamily: mainFont,
          color: Color(0xffC3C8CC),
          fontSize: hintFontsize ,fontWeight: FontWeight.w400),

      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),

        borderSide: BorderSide(color: Color(0xffCFD4D6)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Color(0xffCFD4D6)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Color(0xffCFD4D6)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Color(0xffCFD4D6)),
      ),

      fillColor: fillColor,
      filled: fill,
      hintText: hintText);
}