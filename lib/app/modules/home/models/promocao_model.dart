class PromocaoModel {
  DateTime datafim;
  double novopreco;
  int codprod;
  ProdutoPromo produto;

  PromocaoModel({
    this.datafim,
    this.novopreco,
    this.codprod,
    this.produto,
  });

  factory PromocaoModel.fromJson(Map json) {
    return PromocaoModel(
      datafim: DateTime.parse(json["datafim"]),
      novopreco: json["novopreco"].toDouble(),
      codprod: json["codprod"],
      produto: ProdutoPromo.fromJson(json["produto"]),
    );
  }
}

class ProdutoPromo{
  String descricao;
  int ean;
  double preco;

  ProdutoPromo({
    this.descricao, this.ean, this.preco,
  });

  factory ProdutoPromo.fromJson(Map json){
    return ProdutoPromo(
      descricao: json["descricao"],
      ean: json["ean"],
      preco: json["preco"].toDouble(),
    );
  }
}
