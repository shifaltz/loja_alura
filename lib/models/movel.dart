class Movel{
   String titulo;
   int preco;
   String foto;
   String descricao;

  Movel({
    this.titulo,
    this.preco,
    this.foto,
    this.descricao,
  });

  Movel.fromJson(Map<String, dynamic> json){
    titulo = json['titulo'];
    preco = json['preco'];
    foto = json['foto'];
    descricao = json['descricao'];
  }

  @override
  String toString() {
    return 'Movel{titulo: $titulo, preco: $preco, foto: $foto, descricao: $descricao}';
  }

}
