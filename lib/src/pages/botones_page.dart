import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 280.0,
        width: 280.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ]),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -90.0,
          child: cajaRosa,
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomNavBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container(),
          ),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(
                Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.room, 'Location'),
            _crearBotonRedondeado(Colors.brown, Icons.wysiwyg, 'Routes'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueGrey, Icons.info, 'Information'),
            _crearBotonRedondeado(Colors.deepOrangeAccent, Icons.map, 'Maps'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(
                Colors.yellowAccent, Icons.traffic, 'Traffic'),
            _crearBotonRedondeado(
                Colors.limeAccent, Icons.directions, 'Directions'),
          ],
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return Container(
      height: 120.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: color,
            radius: 35.0,
            child: Icon(
              icono,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text(
            texto,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
