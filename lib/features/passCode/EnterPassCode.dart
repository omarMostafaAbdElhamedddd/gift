import 'package:flutter/material.dart';
import 'package:trackapp/litls/responsiveSize.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../../pages/main_home_page.dart';



class PassCodeView extends StatefulWidget {
  const PassCodeView({super.key});

  @override
  State<PassCodeView> createState() => _PassCodeViewState();
}

class _PassCodeViewState extends State<PassCodeView> {
  final FocusNode _focusNode = FocusNode();
  List<int> passcode = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  void _onNumberPressed(int number) {
    if (passcode.length < 6) {
      setState(() {
        passcode.add(number);
      });

      if (passcode.length == 6) {
        Future.delayed(Duration(milliseconds: 200), () {
         Navigator.push(context, PageRouteBuilder(pageBuilder:(context,an,sc){
           return MainHomePage();
         }));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Enter your passcode',
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 24,
              fontFamily: '',
            ),
            Spacer(),

            // عرض النقاط بناءً على عدد الأرقام المدخلة
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: index < passcode.length ? Colors.black : Colors.grey.shade400,
                  radius: 6,
                ),
              )),
            ),

            Spacer(),

            // لوحة الأرقام
            Column(
              children: [
                for (var row in [
                  [1, 2, 3],
                  [4, 5, 6],
                  [7, 8, 9],
                  [-1, 0, -2],
                ])
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: row.map((num) {
                        if (num == -1) {
                          return CustomText(
                            text: 'Forget?',
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          );
                        } else if (num == -2) {
                          return InkWell(
                            onTap: () {
                              if (passcode.isNotEmpty) {
                                setState(() {
                                  passcode.removeLast();
                                });
                              }
                            },
                            child: Icon(Icons.backspace, size: 25),
                          );
                        } else {
                          return InkWell(
                            onTap: () => _onNumberPressed(num),
                            borderRadius: BorderRadius.circular(50), // تحسين التأثير عند الضغط
                            child: Padding(
                              padding: const EdgeInsets.all(16), // زيادة مساحة النقر
                              child: CustomText(
                                text: '$num',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          );
                        }
                      }).toList(),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

