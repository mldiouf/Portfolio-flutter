import 'package:flutter/material.dart';
import 'main.dart';
import 'body.dart';
import 'experiences.dart';
import 'contacts.dart';
import 'apropos.dart';

class Realisations extends StatelessWidget {
  Realisations(String title) {
    this.title = title;
  }
  String title = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text("Realisations"),
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
                icon: Icon(Icons.comment, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new Contact('Contact');
                  }));
                }),
          ],
        ),
      ),
      body: ListView(children: [
        new Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          color: Colors.teal,
          child: Column(children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Mes Realisations",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Filtres",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        iconSize: 25,
                        color: Colors.white,
                        icon: Icon(Icons.filter_list_outlined),
                        onPressed: null,
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(height: 20, color: Colors.white),
            Column(children: <Widget>[
              Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/re1.jpg'),
                            fit: BoxFit.cover)),
                    child: Column(children: <Widget>[
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blueAccent[100],
                            fontWeight: FontWeight.bold,
                            height: 2,
                          )),
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.teal[200],
                            height: 2,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                  'Visiter',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                color: Colors.teal[200],
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ]),
                      )
                    ]),
                  ),
                ),
              ),
              Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/re2.jpg'),
                            fit: BoxFit.cover)),
                    child: Column(children: <Widget>[
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blueAccent[100],
                            fontWeight: FontWeight.bold,
                            height: 2,
                          )),
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent[100],
                            height: 2,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                  'Visiter',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                color: Colors.teal[200],
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ]),
                      )
                    ]),
                  ),
                ),
              ),
              Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/re3.jpg'),
                            fit: BoxFit.cover)),
                    child: Column(children: <Widget>[
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blueAccent[100],
                            fontWeight: FontWeight.bold,
                            height: 2,
                          )),
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent[100],
                            height: 2,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                  'Visiter',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                color: Colors.teal[200],
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ]),
                      )
                    ]),
                  ),
                ),
              ),
              Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/re4.jpg'),
                            fit: BoxFit.cover)),
                    child: Column(children: <Widget>[
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.blueAccent[100],
                            fontWeight: FontWeight.bold,
                            height: 2,
                          )),
                      Text('Site web mldiouf',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent[200],
                            height: 2,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                  'Visiter',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                color: Colors.teal[200],
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ]),
                      )
                    ]),
                  ),
                ),
              ),
            ]),
          ]),
        )
      ]),
    );
  }
}
