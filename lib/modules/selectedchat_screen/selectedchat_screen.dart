import 'package:flutter/material.dart';
import 'package:whatsapp/modules/contact_details/contact_details.dart';
class SelectedChatScreen extends StatefulWidget {
  const SelectedChatScreen({Key? key}) : super(key: key);
static final String id = 'selectedchatscreen';
  @override
  _SelectedChatScreenState createState() => _SelectedChatScreenState();
}

class _SelectedChatScreenState extends State<SelectedChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
leading: GestureDetector(
  onTap: (){

    Navigator.pop(context);
  },
  child:   Row(

    children: [Icon((Icons.arrow_back)),

    CircleAvatar(radius: 15,backgroundColor: Colors.red,)

    ],

  ),
),
        title: GestureDetector(
            onTap: (){

              Navigator.of(context).pushNamed(ContactDetails.id);
            },
            child: Text('Contact name')),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon:Icon(Icons.call)),
          IconButton(onPressed: (){}, icon:Icon(Icons.menu)),

        ],
      ),
      body: Stack(
alignment: AlignmentDirectional.bottomCenter,
        children: [
          ListView.builder(itemBuilder: (context,int)=> Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
decoration: BoxDecoration(
  color: Colors.green
),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('saldmlasmdlksmdlakmsd'),
                  Text('saldmlasmdlksmdlakmsd'),
                  Text('saldmlasmdlksmdlakmsd'),


                ],
              ),
            ),
          )
          ),
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            child: Row(
              children :[

                Expanded(
                  flex: 5,
                child: SizedBox(
                  height: 50,
                  child: TextField(
textAlign: TextAlign.start,
                    decoration: InputDecoration(
                  suffix: Row(
                //    mainAxisAlignment: MainAxisAlignment.end,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,

              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add_link,),),
                IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_rounded,),),
   //  Icon(Icons.add_link),
   //SizedBox(width: 10,),
   //Icon(Icons.camera_alt_sharp)
    ],
    ),


                      prefixIcon: Icon(Icons.emoji_emotions),
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(50)
),
                      filled: true,
                      fillColor: Colors.grey
                    ),

                  ),
                ),
              ),
                Expanded(
                    flex: 1,
                    child: FloatingActionButton(
                        child: Icon(Icons.keyboard_voice_rounded),
                        onPressed: (){}))

              ]),
          )


        ],


      ),
    );
  }
}
