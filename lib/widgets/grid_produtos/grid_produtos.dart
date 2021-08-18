import 'package:ecomerce/models/movel.dart';
import 'package:ecomerce/widgets/grid_produtos/elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final moveis;
  final Function atualiza;

  GridProdutos({this.moveis, this.atualiza});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: moveis.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final movel = Movel.fromJson(moveis[index]);
        return ElementoGridProdutos(
          atualiza: atualiza,
          movel: movel,
        );
      },
    );
  }
}
