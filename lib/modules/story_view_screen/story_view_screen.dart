import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({Key? key}) : super(key: key);
static final String id = 'story_view_screen';

  @override
  _StoryViewScreenState createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: Container(
        // height: 500,
         child: Container(
          // height: 500,
           child: Swiper(
//scrollDirection: Axis.vertical,

             itemCount: 3,
             itemBuilder: (context,int)=>
              StoryView(

              onComplete: (){
                Navigator.pop(context);
              },

      onStoryShow: (s){
              //  s.toString();
      },
              // onVerticalSwipeComplete: ,
               controller:controller ,

               progressPosition: ProgressPosition.top,
               repeat: false,
               inline: false,
               storyItems: [

StoryItem.text(title: 'osdjid', backgroundColor: Colors.red, ),
StoryItem.inlineImage(url: 'https://www.incimages.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg', caption: Text(''), controller: controller),
      StoryItem.text(title: 'osdjid', backgroundColor: Colors.red),
StoryItem.pageVideo('https://www.youtube.com/watch?v=7qdRqgY4THU', controller: controller),
//      StoryItem.text(title: 'osdjid', backgroundColor: Colors.red),

      StoryItem.text(title: 'osdjid', backgroundColor: Colors.red)

             ],),
           ),

         ),
       ));
  }
}
