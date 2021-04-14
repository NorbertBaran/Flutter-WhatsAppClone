import 'package:flutter/material.dart';

class StateScreen extends StatelessWidget {

  const StateScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            //color: Colors.grey
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
                "Mój status",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Dotknij, by zaktual. status"
              )
            ],
          ),
        )
        
      ],
    )
  );
  }
}