import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';

import 'package:whatsapp/modules/story_view_screen/story_view_screen.dart';
class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);
static final String id = 'stories_screen';
  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [

          Expanded(flex: 1,
            child: ListTile(
            title: Text('My status'),
            subtitle: Text('Click to add a status'),
            leading: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(

                  radius: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                  ),

                  child: Icon(Icons.add,
                  color: Colors.white,),
                )

              ],

            ),

        ),
          ),
      //  Text('New stories'),
//Divider(thickness: 3,),
        Expanded(
          flex: 5,
          child: ListView.builder(itemBuilder: (context,int)=>
          ListTile(
            onTap: (){
              Navigator.of(context).pushNamed(StoryViewScreen.id);
            },
            leading: DashedCircle(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 2),
                child: CircleAvatar(

                  radius: 25,
                ),
              ),
            ),
          title: Text('Contact name'),
            subtitle: Text('Time of Status'),
          )

          ),
        )
        ],

      ),
    );
  }
}
