import 'package:flutter/material.dart';

import 'widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Stack(
      children: [
        Expanded(child: Image.asset("assets/626b52d87d19bc1b9e19f137563bce710f1a97fb.png",fit:BoxFit.fill,)),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(

            backgroundColor: Color(0xff168C4B),
            leading:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/d8dcc8805d3e36311101d518df72e6609e32aff4.jpg",
                ),
              ),
            ),
            title: Text(
              "John Safwat",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            actions: [ Icon(Icons.phone, color: Colors.white),
              Icon(Icons.videocam, color: Colors.white),
              Icon(Icons.more_vert, color: Colors.white),],
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Message(text: "Hello !"),
                      Message(text: "Hello !", isMe: true),
                      Message(
                        text:
                        "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                      ),
                      Message(
                        text: "what a Great Content Tp learn Flutter",
                        hasImage: true,
                        imagePass:
                        "assets/bdeb0b38af723565c7b8102b7a314be8213e5943.jpg",
                      ),
                      Message(
                        text: "Hewhat a Great Content Tp learn Flutterllo !",
                        isMe: true,
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    spacing: 4,
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            hoverColor: Colors.transparent,
                            filled: true,
                            fillColor:Colors.transparent,
                            focusColor:Colors.transparent ,
                            prefixIcon: Icon(Icons.camera_alt),
                            suffixIcon: Icon(Icons.send),
                            prefixIconColor: Colors.white,
                            suffixIconColor: Colors.white,
                            hint: Text("Type a Message ...", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff168C4B),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color:Color(0xff168C4B), width: 2, ),
                              borderRadius: BorderRadius.circular(16),
                            ),

                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xff168C4B),
                        child: Icon(Icons.mic, color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ],
          ) ,
        )
      ],
    ));
  }
}
