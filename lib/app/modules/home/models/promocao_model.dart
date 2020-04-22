// To parse this JSON data, do
//
//     final promocaoModel = promocaoModelFromJson(jsonString);

import 'dart:collection';
import 'dart:convert';

class PromocaoModel {
  final DateTime datafim;
  final double novopreco;
  final int codprod;
  final Produto produto;

  PromocaoModel({
    this.datafim,
    this.novopreco,
    this.codprod,
    this.produto,
  });

  PromocaoModel copyWith({
    DateTime datafim,
    double novopreco,
    int codprod,
    Produto produto,
  }) =>
      PromocaoModel(
        datafim: datafim ?? this.datafim,
        novopreco: novopreco ?? this.novopreco,
        codprod: codprod ?? this.codprod,
        produto: produto ?? this.produto,
      );

  factory PromocaoModel.fromJson(String str) => PromocaoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PromocaoModel.fromMap(Map<String, dynamic> json) => PromocaoModel(
    datafim: DateTime.parse(json["datafim"]),
    novopreco: json["novopreco"],
    codprod: json["codprod"],
    produto: Produto.fromMap(json["produto"]),
  );

  Map<String, dynamic> toMap() => {
    "datafim": "${datafim.year.toString().padLeft(4, '0')}-${datafim.month.toString().padLeft(2, '0')}-${datafim.day.toString().padLeft(2, '0')}",
    "novopreco": novopreco,
    "codprod": codprod,
    "produto": produto.toMap(),
  };

  static List<PromocaoModel> fromJsonList(List list){
    if(list == null) return null;
    return list.map<PromocaoModel>((item)=> PromocaoModel.fromMap(item)).toList();
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
