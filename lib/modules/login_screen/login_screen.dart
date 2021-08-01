import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

import 'package:country_picker/country_picker.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:whatsapp/modules/verification_screen/verification_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static final  String id = 'login_Screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();


}
String country_code= '+20';

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column

              (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text('Enter your mobile Number'),
                Text('We will send you a short sms to verify your mobile number')
,

                CountryCodePicker(

                  onChanged: (countrycode){
//print('country code is  $countrycode '  );
setState(() {
  country_code= countrycode.toString();
});

print('country code is  $country_code '  );
                  },
                  hideSearch: false,
                  initialSelection: 'eg',


             //     showCountryOnly: false,
showOnlyCountryWhenClosed: true,
//showFlag: true,
  flagDecoration: BoxDecoration(
    color: Colors.black
  ),
                 //  showFlagMain: false,
                  // countryList: [{
                  //
                  //   'k':'lkj',
                  //   'k':'lkj',
                  //   'k':'lkj',
                  //
                  // }],
                ),
  //              Text(country_code.toString(),),
Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Expanded

      (
      flex: 1,
      child: TextField(

//textAlign: TextAlign.center,   //// enabled: false,
 decoration: InputDecoration(

   prefixText: country_code.toString(),
 //  helperText: country_code.toString(),
   //labelText: country_code.toString()
 ),

  ),
    ),
SizedBox(width: 30,),
    Expanded(flex: 3,
      child: TextField(
        //// enabled: false,
        decoration: InputDecoration(
          hintText: 'phone number'
          //labelText: country_code.toString()
        ),

      ),
    ),


  ],

),
//                 CountryListPick(
//
//
//           theme: CountryTheme(
//           // isShowTitle: false,
//       //   alphabetSelectedTextColor: Colors.blue,
//         //    alphabetSelectedBackgroundColor: Colors.red,
//             isShowCode: false,
//          //   initialSelection: 'egypt'
// showEnglishName: false,
//          //   isDownIcon: false
//
//           ),
//             initialSelection: '+672', //inital selection, +672 for Antarctica
//             onChanged: (CountryCode countrycode){
//               setState(() {
//                 country_code= countrycode.toString();
//                 print("################## $country_code");
//               });
//
//
//             },
//           ),

                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, VerificationScreen.id);        }, child: Text('next'))
              ],

            ),
          ),
        ),
      ),


    );
  }
}
