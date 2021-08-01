import 'package:flutter/material.dart';

class CallScreenDetails extends StatefulWidget {
  const CallScreenDetails({Key? key}) : super(key: key);
  static final String id = 'callscreen_details';
  @override
  _CallScreenDetailsState createState() => _CallScreenDetailsState();
}

class _CallScreenDetailsState extends State<CallScreenDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
     width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      Text("Contact name"),
                      Text('waiting for response')
                      
                    ],
                    
                  ),
                )),
            Expanded(
              flex: 5,
              child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      color: Colors.greenAccent,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                   //   padding: EdgeInsets.only(b),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                            iconSize: 30,
                              onPressed: () {},
                              icon: Icon(
                                Icons.call_end,
                                color: Colors.white,
                              ))),
                    )
                  ]),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.headphones)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
