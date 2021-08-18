import 'package:ecomerce/models/movel.dart';
import 'package:ecomerce/screens/detalhes.dart';
import 'package:ecomerce/widgets/grid_produtos/degrade_elemento_grid.dart';
import 'package:ecomerce/widgets/grid_produtos/imagem_elemento_grid.dart';
import 'package:ecomerce/widgets/grid_produtos/titulo_elemento_grid.dart';
import 'package:flutter/material.dart';

class ElementoGridProdutos extends StatelessWidget {

  final Movel movel;
  final Function atualiza;

  ElementoGridProdutos({this.movel, this.atualiza});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ImagemProdutoGrid(
                imagem: movel.foto,
              ),
              DegradeElementoGrid(),
              TituloElementoGrid(
                titulo: movel.titulo,
              )
            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detalhes(movel: movel,))).then((value) => atualiza());
      },
    );
  }
}
