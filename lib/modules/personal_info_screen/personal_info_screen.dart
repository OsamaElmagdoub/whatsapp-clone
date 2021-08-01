
import 'package:flutter/material.dart';
import 'package:whatsapp/modules/home_screen/home_screen.dart';
class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);
static final String id = 'personal_Info';
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal info'),
        centerTitle: true,
backgroundColor: Colors.white,


      )
      ,

   body: SafeArea(

     child:Padding (
         padding: EdgeInsets.all(20),

       child: Column(
         children: [

           GestureDetector(
             onTap: (){},
             child: CircleAvatar(
               radius: 70,
               backgroundColor: Colors.grey[300],
               child: Icon(Icons.add_a_photo, color:  Colors.black45,size: 50,),
             ),
           ),

           TextField()
,                      ElevatedButton(onPressed: (){
    Navigator.pushNamed(context, HomeScreen.id);        }, child: Text('next'))

    ],
       ),


     ),

   ), );
  }
}
