import 'package:flutter/material.dart';
import 'main.dart';
import 'body.dart';
import 'experiences.dart';
import 'realisations.dart';
import 'apropos.dart';

class Contact extends StatelessWidget {
  Contact(String title) {
    this.title = title;
  }
  String title = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text("Contact"),
        backgroundColor: Colors.teal[200],
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (BuildContext context) {
                return new MyHomePage(title: 'PORTFOLIO MLDIOUF');
              }));
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal[200],
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new Apropos('A propos');
                  }));
                }),
            IconButton(
                icon: Icon(Icons.poll, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new Experiences('Compétences');
                  }));
                }),
            IconButton(
                icon: Icon(Icons.construction, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new Realisations('Realisations');
                  }));
                }),
          ],
        ),
      ),
      body: new Center(
        child: new Card(
          margin: EdgeInsets.only(top: 20),
          elevation: 50,
          color: Colors.teal,
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.person, color: Colors.yellow, size: 30),
                    title: Text(
                      'Mamadou L Diouf',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Developpeur web',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ))),
                Divider(height: 30, color: Colors.teal[200]),
                ListTile(
                    leading: Icon(Icons.phone, color: Colors.yellow, size: 30),
                    title: Text(
                      '77 396 69 43',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Numéro téléphone',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ))),
                Divider(height: 30, color: Colors.teal[200]),
                ListTile(
                    leading: Icon(Icons.email, color: Colors.yellow, size: 30),
                    title: Text(
                      'mldiouf500@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ))),
              ]),
        ),
      ),
    );
  }
}
