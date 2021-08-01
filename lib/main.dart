import 'package:flutter/material.dart';
import 'package:whatsapp/modules/calls_screen/calls_screen.dart';
import 'package:whatsapp/modules/callscreen_details/callscreen_details.dart';
import 'package:whatsapp/modules/chat_screen/chat_screen.dart';
import 'package:whatsapp/modules/contact_details/contact_details.dart';
import 'package:whatsapp/modules/home_screen/home_screen.dart';
import 'package:whatsapp/modules/login_screen/login_screen.dart';
import 'package:whatsapp/modules/personal_info_screen/personal_info_screen.dart';
import 'package:whatsapp/modules/selectedchat_screen/selectedchat_screen.dart';
import 'package:whatsapp/modules/stories_screen/stories_screen.dart';
import 'package:whatsapp/modules/story_view_screen/story_view_screen.dart';
import 'package:whatsapp/modules/verification_screen/verification_screen.dart';
import 'package:whatsapp/modules/welcome_screen/welcome_screen.dart';
main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  initialRoute: HomeScreen.id,
      routes: {
    WelcomeScrren.id:(context)=>WelcomeScrren(),
LoginScreen.id :(context)=>LoginScreen(),
        VerificationScreen.id:(context)=>VerificationScreen(),
        PersonalInfo.id:(context)=>PersonalInfo(),
        HomeScreen.id:(context)=>HomeScreen(),
        ChatScreen.id:(context)=>ChatScreen(),
        StoriesScreen.id:(context)=>StoriesScreen(),
        CallsScreen.id:(context)=>CallsScreen(),
        SelectedChatScreen.id:(context)=>SelectedChatScreen(),
        ContactDetails.id:(context)=>ContactDetails(),
        CallScreenDetails.id:(context)=>CallScreenDetails(),
        StoryViewScreen.id:(context)=>StoryViewScreen(),
      },
    );
  }
}
