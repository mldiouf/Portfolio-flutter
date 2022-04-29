import 'dart:async';
import 'package:flutter/material.dart';
import 'apropos.dart';
import 'experiences.dart';
import 'realisations.dart';
import 'contacts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'MAMADOU LAMINE DIOUF',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.5,
                  fontSize: 27,
                ),
              ),
              Text('Développeur Web & mobile',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.teal[800],
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 200,
          height: 200,
          child: CircleAvatar(
            radius: 150,
            backgroundColor: Colors.teal,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/me.png'),
              radius: 140,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new SizedBox(
                    height: 90.0,
                    width: 90.0,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      color: Color.fromARGB(255, 6, 3, 2),
                      icon: new Icon(Icons.person,
                          size: 90.0, color: Colors.teal),
                      onPressed: versApropos,
                    ),
                  ),
                  new SizedBox(
                      height: 90.0,
                      width: 90.0,
                      child: new IconButton(
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.red,
                        icon: new Icon(Icons.poll,
                            size: 90.0, color: Colors.teal),
                        onPressed: versExperience,
                      )),
                ])),
        Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new SizedBox(
                      height: 90.0,
                      width: 90.0,
                      child: new IconButton(
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.red,
                        icon: new Icon(Icons.construction,
                            size: 90.0, color: Colors.teal),
                        onPressed: versRealisation,
                      )),
                  new SizedBox(
                      height: 90.0,
                      width: 90.0,
                      child: new IconButton(
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.red,
                        icon: new Icon(Icons.comment,
                            size: 90.0, color: Colors.teal),
                        onPressed: versContact,
                      )),
                ])),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(-0.9, -0.6),
                      radius: 2.5,
                      colors: <Color>[
                        Color.fromARGB(255, 20, 58, 5),
                        Color.fromARGB(255, 8, 249, 96),
                      ],
                      stops: <double>[0.5, 1.0],
                    ),
                  ),
                  child: Text('Bienvenue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                )
              ]),
        ),
      ],
    );
  }

  void snack() {
    SnackBar snackBar = new SnackBar(
      content: new Text(
        'Je suis un SnackBAr',
        textScaleFactor: 1.5,
        textAlign: TextAlign.center,
      ),
      duration: new Duration(seconds: 5),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<Null> alerte() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text("Ceci est une alerte"),
            content: new Text(
                "Bienvenue chez nous, Nous avons quelque soucis technique avec notre plateforme"),
            contentPadding: EdgeInsets.all(5.0),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    print('Abord');
                    Navigator.pop(context);
                  },
                  child: new Text(
                    "Annuler",
                    style: new TextStyle(color: Colors.red),
                  )),
              new FlatButton(
                  onPressed: () {
                    print('Continuer');
                    Navigator.pop(context);
                  },
                  child: new Text(
                    "Continuer",
                    style: new TextStyle(color: Colors.blue),
                  )),
            ],
          );
        });
  }

  Future<Null> dialog(String title, String desc) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: new Text(title),
            contentPadding: EdgeInsets.all(10.0),
            children: <Widget>[
              new Text(desc),
              new Container(
                height: 20.0,
              ),
              new RaisedButton(
                child: new Text("OK"),
                color: Colors.teal,
                textColor: Colors.white,
                onPressed: () {
                  print("appuyer");
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void versApropos() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new Apropos('A propos');
    }));
  }

  void versExperience() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new Experiences('Compétences');
    }));
  }

  void versRealisation() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new Realisations('Realisation');
    }));
  }

  void versContact(){
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new Contact('Contact');
    }));
  }
}
