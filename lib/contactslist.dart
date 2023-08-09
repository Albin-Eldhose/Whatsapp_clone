import 'package:flutter/material.dart';

import 'info.dart';
import 'mobilechatscreen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MobileChatScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    info[index]['name'].toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      info[index]['message'].toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(info[index]['profilePic'].toString()),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      info[index]['time'].toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
