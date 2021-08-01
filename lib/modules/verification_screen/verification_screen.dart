import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:whatsapp/modules/personal_info_screen/personal_info_screen.dart';
class VerificationScreen extends StatefulWidget
{
  const VerificationScreen({Key? key}) : super(key: key);
static final String id = 'verification_screen';
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: EdgeInsets.all(20),
  child: SafeArea(
    child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('mobile number verification'),
        Text('waiting for auto fill'),
PinFieldAutoFill(keyboardType: TextInputType.number,),

Divider(
  thickness: 5,
),
        Text('enter the code'),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    Icon(Icons.sms),
    Text('resend the sms'),
    Text('${Timer(Duration(minutes: 2), (){})}')

  ],
),
    Divider(
    thickness: 5,
  ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Icon(Icons.call),
            Text('Call me'),
            Text(Timer(

                Duration(minutes: 2), (){}).toString())

          ],
        )

        ,                ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, PersonalInfo.id);        }, child: Text('next'))

      ],

    ),
  ),
),

    );
  }
}
