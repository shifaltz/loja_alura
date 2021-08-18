import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {

  final String texto;
  final TextStyle estilo;

  TextoDetalhes({this.texto, this.estilo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10),
      child: _estilizarTexto(texto),
    );
  }

  _estilizarTexto(texto){
    if(estilo != null){
      return Text(texto, style: estilo);
    }
    return Text(texto);
  }
}
