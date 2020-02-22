import 'package:flutter/material.dart';
import './camera.dart';
import './chat.dart';
import './status.dart';
import './calls.dart';
class whatsapp extends StatefulWidget {
  @override
  _whatsappState createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> with SingleTickerProviderStateMixin {
 TabController _tc;
 void initState(){
   super.initState();
   _tc=new TabController(length: 4, vsync: this);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Whatspp'),
        elevation: 0.7,
bottom: new TabBar(controller: _tc
    ,tabs: <Widget>[
      new Tab(icon: new Icon(Icons.camera_alt),),
    new Tab(text: "CHAT",),
      new Tab(text: "STATUS",),
      new Tab(text: "CALLS",),
  ],),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert),

        ],
      ),
      body: new TabBarView(controller: _tc,
         children: <Widget>[
           new camera(),
        new chat(),
    new status(),
    new calls(),

         ],
    ),
    floatingActionButton: new FloatingActionButton(backgroundColor: Theme.of(context).accentColor,
    child: new Icon(Icons.message,
    color: Colors.white,),
    onPressed: () => print('open chats')),
    );
  }
}
