import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chatlist.dart';

import 'info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.black38,
                  ),
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.black38,
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.black38,
                      ),
                      Icon(
                        Icons.currency_rupee,
                        color: Colors.black38,
                      ),
                    ],
                  ),
                ),
                hintText: 'Type a message',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.2),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ))),
          )
        ],
      ),
    );
  }
}
