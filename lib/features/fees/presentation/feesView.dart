import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class FeesView extends StatelessWidget {
  const FeesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:10,
              ),
              CustomText(
                text: 'Fees',
                fontWeight: FontWeight.w900,
                fontSize: 22,
                color: Colors.black,
              ),
              CustomText(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  maxLines: 3,
                  text:
                      'Below are the fees breakdown and any const that can occur on your account'),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Card',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: CustomText(
                                  text: 'Fist Track card',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: 'Free',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: CustomText(
                                  text: 'Monthly/Yearly fees',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: 'Free',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: CustomText(
                                  maxLines: 2,
                                  text: 'Track card replacement after expiry',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: 'EGP 99',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: CustomText(
                                  text: 'Track card replacement before expiry',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: 'EGP 99',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomText(
                        fontSize: 18,
                        text: 'Send',
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomText(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                text: 'Install transfers to Track users',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: 'Free',
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomText(
                        fontSize: 18,
                        text: 'Spend',
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: CustomText(
                                  text: 'Local card purchases',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: 'Free',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'BDC ATM withdrawals',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    CustomText(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        text: 'Banque du caire ATM withdrawals')
                                  ],
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: 'EGP 5',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      maxLines: 2,
                                      text: 'Other local ATM withdrawals',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    CustomText(
                                        maxLines: 3,
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        text:
                                            'A flat fee applies when you withdraw cash and from any other local ATM')
                                  ],
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: 'EGP 5',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomText(text: 'Add money',fontWeight: FontWeight.w800,fontSize: 16,),
                      SizedBox(height: 16,),
                      AddMoneyWidget()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddMoneyWidget extends StatelessWidget {
  const AddMoneyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'ATM Deposit',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      SizedBox(height: 2,),

                      CustomText(
                          maxLines: 3,
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text: 'Deposit money into your account through any Banque du care ATM')
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: 'Free',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Bank transfer',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomText(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text: 'Transfer money to your account from any local bank')
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: 'Free',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        maxLines: 2,
                        text: 'Fawry',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomText(
                          maxLines: 3,
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text:
                          'Fawy administrative fees')
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: '~1%',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )
            ],
          ),

          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: CustomText(
                    maxLines: 2,
                    text: 'Request from Track users',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: 'Free',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )
            ],
          ),

          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        maxLines: 2,
                        text: 'InstaPay',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomText(
                          maxLines: 3,
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text:
                          'Transfer money to your account through instaPay')
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: 'Free',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )
            ],
          ),

          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        maxLines: 2,
                        text: 'Patment cards',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomText(
                          maxLines: 3,
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text:
                          'Add money into your account by using Debit and Credit cards')
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: '1%',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ],
      ),
    );
  }
}
