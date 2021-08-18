import 'package:flutter/material.dart';

class TituloElementoGrid extends StatelessWidget {
  final String titulo;

  TituloElementoGrid({this.titulo});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(titulo, style: Theme.of(context).textTheme.headline2,),
    );
  }
}
