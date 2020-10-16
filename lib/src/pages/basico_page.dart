import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://cdn.theatlantic.com/assets/media/img/photo/2020/02/winners-2019-international-landscap/p01_SanderGrefte14180-443-1/original.jpg'),
    );
  }

  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Salar de Uyuni',
                  style: estiloTitulo,
                ),
                SizedBox(height: 5.0),
                Text(
                  'Destino turístico de Bolivia',
                  style: estiloSubtitulo,
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 25.0,
          ),
          Text('41')
        ],
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 30.0),
        SizedBox(
          height: 3.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Text(
        'Ex voluptate dolore nostrud est labore laboris cupidatat reprehenderit elit cillum cillum in qui excepteur. Commodo amet laborum culpa in ullamco culpa ipsum commodo ipsum. Elit non qui veniam occaecat. Pariatur in exercitation sit sunt et est qui proident aliqua sunt excepteur. Ea minim nulla deserunt mollit proident minim sint laborum. Excepteur minim proident do esse veniam.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
