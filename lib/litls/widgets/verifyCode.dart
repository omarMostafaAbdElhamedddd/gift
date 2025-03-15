

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trackapp/helper/responsive.dart';

import '../../../../../litls/consts.dart';


class OtpInputFields extends StatefulWidget {

  OtpInputFields({ this.obscureText = true,
    // required this.controllers
  });
  final bool obscureText;
  // final List<TextEditingController> controllers;
  @override
  _OtpInputFieldsState createState() => _OtpInputFieldsState();
}

class _OtpInputFieldsState extends State<OtpInputFields> {
  late final List<TextEditingController> _controllers ;
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());


  @override
  void initState() {
    // _controllers = widget.controllers;
    super.initState();
    for (var focusNode in _focusNodes) {
      focusNode.addListener(() {
        setState(() {}); // تحديث الواجهة عند تغيير التركيز
      });
    }
  }
  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }
  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < 5) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]); // انتقل للحقل التالي
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]); // العودة للحقل السابق إذا تم الحذف
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) =>
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                width: SizeConfig.screenWidth!*.12,
                child: TextFormField(

                  // obscuringCharacter: 'x',
                  // validator: (data){
                  //
                  // },
                  // obscureText: widget.obscureText,
                  cursorColor: primaryColor,
                  // controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: mainFont,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2A2A2A),
                  ),
                  decoration: InputDecoration(

                    contentPadding: EdgeInsets.symmetric(vertical: 11),
                    // border:InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color:_focusNodes[index].hasFocus ? Colors.grey.shade400 :  Colors.transparent),
                    ),
                    counterText: "",
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  onChanged: (value) => _onChanged(value, index),
                  textInputAction: TextInputAction.next,
                ),
              )
              ,
            ),
          ),
      ),
    );
  }
}
