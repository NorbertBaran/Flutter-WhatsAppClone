import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/models/Users.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildList(),
    );
  }

  Widget _buildList(){
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, i){
        return _BuildRow(users[i].name, users[i].message);
      }
    );
  }
}

Widget _BuildRow(String user, String lastMessage){
  return Container(
    padding: EdgeInsets.only(
      left: 12,
      top: 12
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.account_circle,
            color: Colors.black12,
            size: 60
          )
        ),
        Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                user,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                lastMessage
              )
            ],
          ),
        )
        
      ],
    )
  );
  /*return ListTile(
    title: Text(
      user,
    ),
  );*/
}