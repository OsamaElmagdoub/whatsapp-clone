
import 'package:flutter/material.dart';
import 'package:whatsapp/modules/calls_screen/calls_screen.dart';
import 'package:whatsapp/modules/chat_screen/chat_screen.dart';
import 'package:whatsapp/modules/stories_screen/stories_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
static final String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 3,
      child: Scaffold(

appBar: AppBar(
  automaticallyImplyLeading: false,
bottom: TabBar(
  tabs: [
  Tab( child: Text('Chats'),),
  Tab( child: Text('Stories'),),
  Tab( child: Text('Calls'),),


  ],

),


//leading: ,
title:Text('whatsapp') ,

  actions: [

  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
  IconButton(onPressed: (){}, icon: Icon(Icons.menu)),

],
),
body: TabBarView(

  children: [

    ChatScreen(),
StoriesScreen(),    CallsScreen(),


  ],
),
      ),
    );
  }
}
