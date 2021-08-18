import 'package:ecomerce/main.dart';
import 'package:ecomerce/models/item_carrinho.dart';
import 'package:ecomerce/models/movel.dart';
import 'package:ecomerce/widgets/detalhes_produto/texto_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_br', symbol: 'R\$');
  final Function atualizaPagina;

  CardDetalhes({this.movel, this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(
            texto: movel.titulo,
            estilo: Theme.of(context).textTheme.headline1,
          ),
          TextoDetalhes(
            texto: movel.descricao,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatacaoReais.format(movel.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextButton(
                  onPressed: () {
                    _showToast(context);
                    _verificarListaItemCarrinho(
                        Home.itensCarrinho,
                        ItemCarrinho(
                          movel: movel,
                          quantidade: 1,
                        ));
                  },
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _adicionarItemCarrinho(itemCarrinho) {
    Home.itensCarrinho.add(itemCarrinho);
    atualizaPagina();
  }

  void _verificarListaItemCarrinho(
      List<ItemCarrinho> lista, ItemCarrinho itemCarrinho) {
    int indexMovel = lista.indexWhere((item) => item.movel == movel);
    if (indexMovel >= 0) {
      lista[indexMovel].quantidade = lista[indexMovel].quantidade + 1;
    } else {
      _adicionarItemCarrinho(itemCarrinho);
    }
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text('Produto adicionado ao carrinho'),
      ),
    );
  }
}
