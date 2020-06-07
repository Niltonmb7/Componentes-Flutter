import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Colors.greenAccent[100],
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.ismorbo.com/wp-content/uploads/2018/03/julia-press.jpeg'),
              radius: 20.5,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('N'),
              backgroundColor: Colors.indigoAccent[100],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://s3.amazonaws.com/cosasbucket/wp-content/uploads/2019/06/24180240/The-Strokes-1.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );

  }
}