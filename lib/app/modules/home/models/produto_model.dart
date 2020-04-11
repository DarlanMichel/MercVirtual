// To parse this JSON data, do
//
//     final produtoModel = produtoModelFromJson(jsonString);

import 'dart:convert';

class ProdutoModel {
  final String descricao;
  final double preco;
  final int ean;
  final int categoria;
  final int codigo;
  final double estoque;
  final String unidadeMedida;

  ProdutoModel({
    this.descricao,
    this.preco,
    this.ean,
    this.categoria,
    this.codigo,
    this.estoque,
    this.unidadeMedida,
  });

  ProdutoModel copyWith({
    String descricao,
    double preco,
    int ean,
    int categoria,
    int codigo,
    double estoque,
    String unidadeMedida,
  }) =>
      ProdutoModel(
        descricao: descricao ?? this.descricao,
        preco: preco ?? this.preco,
        ean: ean ?? this.ean,
        categoria: categoria ?? this.categoria,
        codigo: codigo ?? this.codigo,
        estoque: estoque ?? this.estoque,
        unidadeMedida: unidadeMedida ?? this.unidadeMedida,
      );

  factory ProdutoModel.fromJson(String str) => ProdutoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromMap(Map<String, dynamic> json) => ProdutoModel(
    descricao: json["descricao"],
    preco: json["preco"].toDouble(),
    ean: json["ean"],
    categoria: json["categoria"],
    codigo: json["codigo"],
    estoque: json["estoque"].toDouble(),
    unidadeMedida: json["unidade_medida"],
  );

  Map<String, dynamic> toMap() => {
    "descricao": descricao,
    "preco": preco,
    "ean": ean,
    "categoria": categoria,
    "codigo": codigo,
    "estoque": estoque,
    "unidade_medida": unidadeMedida,
  };

  static List<ProdutoModel> fromJsonList(List list){
    if(list == null) return null;
    return list.map<ProdutoModel>((item)=> ProdutoModel.fromMap(item)).toList();
  }
}
