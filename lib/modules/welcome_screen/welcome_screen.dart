import 'package:flutter/material.dart';
import 'package:whatsapp/modules/login_screen/login_screen.dart';
class WelcomeScrren extends StatelessWidget {
  const WelcomeScrren({Key? key}) : super(key: key);
  static final  String id = 'welcome_Screen';
  @override
  Widget build(BuildContext context) {

    String image_url = 'https://i.pinimg.com/736x/91/be/c1/91bec19b507a1acc5b7aae5dc705cc64.jpg';


    return Scaffold(
      
      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column

            (
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text('Welcome to whatsapp')
              ,Image(image: NetworkImage(image_url))
            ,

            ElevatedButton(onPressed: (){
Navigator.pushNamed(context, LoginScreen.id);        }, child: Text('Agree'))
            ],

          ),
        ),
      ),
      
    );
  }
}
