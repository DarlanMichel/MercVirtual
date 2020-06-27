// To parse this JSON data, do
//
//     final produtoCarrinhoModel = produtoCarrinhoModelFromMap(jsonString);

import 'dart:convert';

class ProdutoCarrinhoModel {
  ProdutoCarrinhoModel({
    this.qtd,
    this.idProduto,
    this.status,
  });

  final int qtd;
  final int idProduto;
  final String status;

  ProdutoCarrinhoModel copyWith({
    int qtd,
    int idProduto,
    String status,
  }) =>
      ProdutoCarrinhoModel(
        qtd: qtd ?? this.qtd,
        idProduto: idProduto ?? this.idProduto,
        status: status ?? this.status,
      );

  factory ProdutoCarrinhoModel.fromJson(String str) => ProdutoCarrinhoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProdutoCarrinhoModel.fromMap(Map<String, dynamic> json) => ProdutoCarrinhoModel(
    qtd: json["qtd"],
    idProduto: json["id_produto"],
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "qtd": qtd,
    "id_produto": idProduto,
    "status": status,
  };

  static List<ProdutoCarrinhoModel> fromJsonList(List list){
    if(list == null) return null;
    return list.map<ProdutoCarrinhoModel>((item)=> ProdutoCarrinhoModel.fromMap(item)).toList();
  }
}
