import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String text;
  late final bool isMe;
  final bool hasImage;
  final String imagePass;
  Message({this.isMe = false,required this.text,this.hasImage=false, this.imagePass="", super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Align(
        alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 280),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isMe ? Color(0xff232D36) : Color(0xff168C4B),
            borderRadius: BorderRadius.only(
              topRight: isMe ? Radius.circular(0) : Radius.circular(8),
              topLeft: isMe ? Radius.circular(8) : Radius.circular(0),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            spacing: 1,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
             hasImage? ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePass,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ):SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
