import 'package:flutter/material.dart';
import 'package:asset_cache/asset_cache.dart';
import 'main.dart';
import 'body.dart';
import 'realisations.dart';
import 'contacts.dart';
import 'apropos.dart';

class Experiences extends StatelessWidget {
  Experiences(String title) {
    this.title = title;
  }
  String title = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
            title: const Text("Compétences"),
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
            leading: new Container(),
            backgroundColor: Colors.teal[200]),
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
                  icon: Icon(Icons.construction, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (BuildContext context) {
                      return new Realisations('Realisations');
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
        body: ListView(
          children: [
            new Center(
              child: new Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Text('Mes Compétences en infographe',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.yellow)),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                        width: (MediaQuery.of(context).size.width / 10) * 3,
                        height: (MediaQuery.of(context).size.width / 10) * 3,
                        child: Image.asset('images/photoshop.png'),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/illustrator.png')),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/Premiere.png')),
                    ]),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                        width: (MediaQuery.of(context).size.width / 10) * 3,
                        height: (MediaQuery.of(context).size.width / 10) * 3,
                        child: Image.asset('images/indesign.png'),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/xdesign.png')),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 15, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/figma.png')),
                    ]),
                    Text('Mes Compétences en développement web & mobile',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.yellow)),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 5, right: 5),
                        width: (MediaQuery.of(context).size.width / 10) * 3,
                        height: (MediaQuery.of(context).size.width / 10) * 3,
                        child: Image.asset('images/html.png'),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/css.png')),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/boostrap.png')),
                    ]),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                        width: (MediaQuery.of(context).size.width / 10) * 3,
                        height: (MediaQuery.of(context).size.width / 10) * 3,
                        child: Image.asset('images/javascript.png'),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/php.png')),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/python.png')),
                    ]),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                        width: (MediaQuery.of(context).size.width / 10) * 3,
                        height: (MediaQuery.of(context).size.width / 10) * 3,
                        child: Image.asset('images/dart.png'),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/wordpress.png')),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 5, bottom: 10, right: 5),
                          width: (MediaQuery.of(context).size.width / 10) * 3,
                          height: (MediaQuery.of(context).size.width / 10) * 3,
                          child: Image.asset('images/prestashop.png')),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
