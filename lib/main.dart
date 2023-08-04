import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Neizlesek());
}

class Neizlesek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Bu Hafta Neler İzlesek ?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: izlemeListe(),
      ),
    );
  }
}

class izlemeListe extends StatefulWidget {
  @override
  State<izlemeListe> createState() => _izlemeListeState();
}

class _izlemeListeState extends State<izlemeListe> {
  int ustFilm = 1;
  int ortaFilm = 1;
  int sonFilm = 1;

  List<String> ustListe = ['Ant Man', 'Black Panther', 'Replikalar'];
  List<String> ortaListe = ['Avatar', 'Free Guy', 'John Wick'];
  List<String> sonListe = ['Batman', 'Lord of The Rings', 'Uncharted'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  color: Colors.white30,
                  highlightColor: Colors.black12,
                  splashColor: Colors.white10,
                  onPressed: () {
                    setState(() {
                      ustFilm = Random().nextInt(3) + 1;
                      ortaFilm = Random().nextInt(3) + 1;
                      sonFilm = Random().nextInt(3) + 1;
                    });
                  },
                  child: Image.asset('assets/images/ust$ustFilm.jpg')),
            ),
          ),
          Text(
            ustListe[ustFilm - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  color: Colors.white30,
                  highlightColor: Colors.black12,
                  splashColor: Colors.white10,
                  onPressed: () {
                    setState(() {
                      ustFilm = Random().nextInt(3) + 1;
                      ortaFilm = Random().nextInt(3) + 1;
                      sonFilm = Random().nextInt(3) + 1;
                    });
                  },
                  child: Image.asset('assets/images/orta$ortaFilm.jpg')),
            ),
          ),
          Text(
            ortaListe[ortaFilm - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
              child: Divider(
            height: 5,
            color: Colors.black,
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  color: Colors.white30,
                  highlightColor: Colors.black12,
                  splashColor: Colors.white10,
                  onPressed: () {
                    setState(() {
                      ustFilm = Random().nextInt(3) + 1;
                      ortaFilm = Random().nextInt(3) + 1;
                      sonFilm = Random().nextInt(3) + 1;
                    });
                  },
                  child: Image.asset('assets/images/son$sonFilm.jpg')),
            ),
          ),
          Text(
            sonListe[sonFilm - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
