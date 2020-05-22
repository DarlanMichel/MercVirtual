// To parse this JSON data, do
//
//     final carrinhoModel = carrinhoModelFromJson(jsonString);

import 'dart:convert';

class CarrinhoModel {
  final int idProduto;
  final int qtd;
  final Produto produto;

  CarrinhoModel({
    this.idProduto,
    this.qtd,
    this.produto,
  });

  CarrinhoModel copyWith({
    int idProduto,
    int qtd,
    Produto produto,
  }) =>
      CarrinhoModel(
        idProduto: idProduto ?? this.idProduto,
        qtd: qtd ?? this.qtd,
        produto: produto ?? this.produto,
      );

  factory CarrinhoModel.fromJson(String str) => CarrinhoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CarrinhoModel.fromMap(Map<String, dynamic> json) => CarrinhoModel(
    idProduto: json["id_produto"],
    qtd: json["qtd"],
    produto: Produto.fromMap(json["produto"]),
  );

  Map<String, dynamic> toMap() => {
    "id_produto": idProduto,
    "qtd": qtd,
    "produto": produto.toMap(),
  };

  static List<CarrinhoModel> fromJsonList(List list){
    if(list == null) return null;
    return list.map<CarrinhoModel>((item)=> CarrinhoModel.fromMap(item)).toList();
  }

}

class Produto {
  final String descricao;
  final int ean;
  final double preco;

  Produto({
    this.descricao,
    this.ean,
    this.preco,
  });

  Produto copyWith({
    String descricao,
    int ean,
    double preco,
  }) =>
      Produto(
        descricao: descricao ?? this.descricao,
        ean: ean ?? this.ean,
        preco: preco ?? this.preco,
      );

  factory Produto.fromJson(String str) => Produto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Produto.fromMap(Map<String, dynamic> json) => Produto(
    descricao: json["descricao"],
    ean: json["ean"],
    preco: json["preco"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "descricao": descricao,
    "ean": ean,
    "preco": preco,
  };
}
