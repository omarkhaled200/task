import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/widgets/Chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.username, required this.image});

  final String username;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white.withOpacity(0.92),
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Row(children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(image),
          ),
        const SizedBox(width: 4,),
          Text(username,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
        ],),
        actions:const [
            SizedBox(
            width: 8,
          ),
          Icon(
            Icons.videocam_outlined,
            size: 28,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.call_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            FontAwesomeIcons.ellipsisVertical,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
  body: Column(
    children: [
      Expanded(
        child: 
          ListView(
            children: [
              Chatbubble(message: 'how are you $username' ),
        const  Chatbubbleforfreinds(message: 'I\'m fine bro',),
            ],
          ),  
      ),
      const Customtextfield(),
    ],
  ),
    );
  }
}

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return     Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon:const Icon(
                          Icons.send,
                          color: Colors.green,
                        ),
                        hintText: 'Send message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(color: Colors.green))),
                  ),
                )
        ;
  }
}