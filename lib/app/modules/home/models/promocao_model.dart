import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';

class PromocaoModel {
  DateTime datafim;
  double novopreco;
  int codprod;
  ProdutoModel produto;

  PromocaoModel({
    this.datafim,
    this.novopreco,
    this.codprod,
    this.produto,
  });

  factory PromocaoModel.fromJson(Map json) {
    return PromocaoModel(
      datafim: DateTime.parse(json["datafim"]),
      novopreco: json["novopreco"],
      codprod: json["codprod"],
      produto: ProdutoModel.fromJson(json["produto"]),
    );
  }
}
