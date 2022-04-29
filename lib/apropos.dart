import 'package:flutter/material.dart';
import 'main.dart';
import 'body.dart';
import 'experiences.dart';
import 'realisations.dart';
import 'contacts.dart';

class Apropos extends StatelessWidget {
  Apropos(String title) {
    this.title = title;
  }
  String title = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('A PROPOS'),
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
                icon: Icon(Icons.poll, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new Experiences('Experiences');
                  }));
                },
              ),
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
        body: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width / 8) * 3,
                height: 220.0,
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/me.png'),
                    radius: 140,
                  ),
                ),
              ),
              Column(children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    width: (MediaQuery.of(context).size.width / 8) * 4,
                    child: Text("MAMADOU LAMINE\nDIOUF",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.yellow))),
                Text('Développeur Web & Mobile',
                    style: TextStyle(
                      color: Colors.yellow[400],
                      fontSize: 17.0,
                    )),
                Text('Fullstack',
                    style: TextStyle(
                      color: Colors.yellow[400],
                      fontSize: 17.0,
                    )),
              ]),
            ]),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              width: MediaQuery.of(context).size.width,
              child: Text(
                  "J'ai toujours été passionné par l'informatique en général,et comme elle est vaste et dynamique. Je me suis spécialisé dans le dévéloppement web et mobile aprés 2ans en genie logiciel et informatique",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              width: MediaQuery.of(context).size.width,
              child: Text(
                  "Apres 2ans en d'informatique générale j'ai acquis des bases solides en Administration des Réseaux Informatiques (CISCO, MICROSOFT, LINUX) - Système d’Exploitation et Programmation - Modélisation des SI - Algorithmique avancés - Programmation C - Application client serveur et WEB (DHTML PHP MySQL) - Base de données avancés (SQL, Oracle) - Langage JAVA (Programmation réseaux) ",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              width: MediaQuery.of(context).size.width,
              child: Text(
                  "Mes 9mois passé à ESTEL m'a permis d'etre un vrai développeur web avec des connaissances en PHOTOSHOP - ILLUSTRATORS - INDESIGN - FIGNA - HTML - CSS - BOOSTRAP - JAVASCRIPTS - PHP - SQL/MYSQL - UML ...",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            )
          ]),
        ));
  }
}
