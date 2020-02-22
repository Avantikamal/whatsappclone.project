import 'package:flutter/material.dart';
import './chatModel.dart';
//class chat extends StatefulWidget {
//  @override
//  Widget build(BuildContext context) {
//    return  new Center(
//      child: new Text('chats',style: new TextStyle(fontSize: 20.0),),
//    );
//  }
//
//  @override
//  State<StatefulWidget> createState() {
//
//    return new chatState();
//  }
//}

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: data.length
        ,itemBuilder: (context,i) => new Column(
children: <Widget>[
  new Divider(
    height: 10.0,
  ),
  new ListTile(
    leading:
    new CircleAvatar(
      foregroundColor: Theme.of(context).primaryColor,
      backgroundColor: Colors.grey,
      backgroundImage: new NetworkImage(data[i].avatarUrl),
  ),
    title: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(data[i].name,
      style: new TextStyle(fontWeight: FontWeight.bold),
      ),
          new Text(data[i].time,
            style: new TextStyle(color: Colors.grey,
            fontSize: 14.0),
          ),
        ],
    ),
    subtitle: new Container(
      padding: const EdgeInsets.only(top: 5.0),
      child: new Text(data[i].message,style: new TextStyle(
        color: Colors.grey,fontSize: 15.0
      ),),


    ),
  ),],
  ),
  );

  }
}









