import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:whatsapp/modules/contacts_page/contacts_page.dart';
import 'package:whatsapp/modules/selectedchat_screen/selectedchat_screen.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
static final String id = 'Chat_Screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),

        onPressed: ()async{
  final PermissionStatus permissionStatus = await _getPermission();
  if (permissionStatus == PermissionStatus.granted) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ContactsPage()));
  } else {
    //If permissions have been denied show standard cupertino alert dialog
    showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
    title: Text('Permissions error'),
    content: Text('Please enable contacts access '
    'permission in system settings'),
    actions: <Widget>[
    RaisedButton(
    child: Text('OK'),
    onPressed: () => Navigator.of(context).pop(),
    )
    ],
    ));


    }}      ),
body: ListView.builder(

    itemBuilder: (context,int)=>
        Column(children: [
        ListTile(
onTap: (){
  Navigator.of(context).pushNamed(SelectedChatScreen.id);
},
      leading: CircleAvatar(

     radius: 30,

    ),
title: Text('Contact name'),
       subtitle: Text('Welcome i am osama'),

    trailing: Text('Time'),
    ),
        Padding(

          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Divider(

            thickness: 1,),
        )
        ]

    ),

    ));
  }
  Future<PermissionStatus> _getPermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
      await [Permission.contacts].request();

print('errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');
      return permissionStatus[Permission.contacts] ??
          PermissionStatus.undetermined;


    } else {
      return permission;
    }
  }

}
