import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.brown[100],
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(12.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.indigo),
            title: Text('Tarjeta tipo 1'),
            subtitle: Text('Prueba de subtitulo de subtitulo de subtitulo de subtitulo de subtitulo de subtitulo de subtitulo de subtitulo de subtitulo de subtitulo de subtitulo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {}
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {}
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            // image: NetworkImage('https://i.pinimg.com/originals/a3/40/18/a34018ccbebfc1f5bf6364316001848d.jpg')
            image: NetworkImage('https://www.wallpapers13.com/wp-content/uploads/2016/02/Canada-Spirit-Island-Jasper-National-Park-Nature-Wallpaper-8628-915x515.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'), 
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   //image: NetworkImage('https://i.pinimg.com/originals/a3/40/18/a34018ccbebfc1f5bf6364316001848d.jpg')
          //   image: NetworkImage('https://www.wallpapers13.com/wp-content/uploads/2016/02/Canada-Spirit-Island-Jasper-National-Park-Nature-Wallpaper-8628-915x515.jpg')
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Título de imagen.')
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 1.0,
            spreadRadius: 0.0,
            offset: Offset(1.0, 1.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );

  }

}