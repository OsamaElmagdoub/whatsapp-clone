import 'package:flutter/material.dart';
import 'package:whatsapp/modules/callscreen_details/callscreen_details.dart';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
/// Define App ID and Token
const APP_ID = 'e83dfa1e802d48fd91342301cb68719c';
const Token =
    '006e83dfa1e802d48fd91342301cb68719cIADDDhvd7y7SeSdWZ9g0VrHkz2gZRUAdNi8dVYZlr06IJz15sfsAAAAAEAC1Unli7xkHYQEAAQDuGQdh';
class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);
static final String id = 'calls_screen';
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {

  bool _joined = false;
  int _remoteUid = 0;
  bool _switch = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    // Get microphone permission
    await [Permission.microphone].request();

    // Create RTC client instance
    RtcEngineContext context = RtcEngineContext(APP_ID);
    var engine = await RtcEngine.createWithContext(context);
    // Define event handling logic
    engine.setEventHandler(RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed) {
          print('joinChannelSuccess ${channel} ${uid}');
          setState(() {
            _joined = true;
          });
        }, userJoined: (int uid, int elapsed) {
      print('userJoined ${uid}');
      setState(() {
        _remoteUid = uid;
      });
    }, userOffline: (int uid, UserOfflineReason reason) {
      print('userOffline ${uid}');
      setState(() {
        _remoteUid = 0;
      });
    }));
    // Join channel with channel name as 123
    await engine.joinChannel(Token, '123', null, 0);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {


          },
          child: Icon(Icons.add_call),
        ),
        body: ListView.builder(

          itemBuilder: (context, int) =>
              Column(children: [
                ListTile(

                    leading: CircleAvatar(

                      radius: 30,

                    ),
                    title: Text('Contact name'),
                    subtitle: Text('Time of call and date'),

                    trailing: IconButton(onPressed: () {
                      initPlatformState();
                   //   Navigator.of(context).pushNamed(CallScreenDetails.id);
                      //   launch("tel://01099030517");
                    }, icon: Icon(Icons.call))
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

}