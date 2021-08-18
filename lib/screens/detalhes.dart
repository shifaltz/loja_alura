import 'package:ecomerce/models/movel.dart';
import 'package:ecomerce/widgets/appbar_custom.dart';
import 'package:ecomerce/widgets/detalhes_produto/card_detalhes.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {

  final Movel movel;

  Detalhes({this.movel});

  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/${widget.movel.foto}'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustom(
          titulo: '',
          carrinho: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 220,
            margin: EdgeInsets.all(16),
            child: CardDetalhes(
              atualizaPagina: atualiza,
              movel: widget.movel,
            ),
          ),
        ),
      ),
    );
  }

  atualiza(){
    setState(() {

    });
  }

}
