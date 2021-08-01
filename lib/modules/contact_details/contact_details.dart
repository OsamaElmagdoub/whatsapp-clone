import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);
  static final String id = 'contact_deatails';

  @override

  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {

  var url = 'data:image/jpeg;base64,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';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: 200,
                child: Image(image:NetworkImage(url),),

        ),
//           Expanded(
//               flex: 2,
//               child:
//           ListView.builder(
// //            itemCount: 10,
//             itemBuilder: (context,int index)=>
//              Padding(
//                padding: EdgeInsets.all(10),
//                child: Container(
//                 color: Colors.green,
//                 child: ListTile(
//                 //  selectedTileColor: Colors.green,
//                   leading: Text('Media'),
//
//                 ),
//             ),
//              ),
//           )
//           )

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container

                (
           //     height: 200,
                color: Colors.green,
                child: ListTile(
                  //  selectedTileColor: Colors.green,
                  leading: Text('Media'),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container

                (
                color: Colors.green,
                child: ListTile(
                  //  selectedTileColor: Colors.green,
                  leading: Text('phone number'),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.chat)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),

                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container

                (
                color: Colors.green,
                child: ListTile(
                  //  selectedTileColor: Colors.green,
                  leading: Text('Block'),

                ),
              ),
            ),

          ]
        ),
      ),
    );
  }
}
