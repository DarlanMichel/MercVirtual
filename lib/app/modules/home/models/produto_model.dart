class ProdutoModel{
  String descricao;
  double preco;
  int ean;
  int categoria;
  int codigo;
  double estoque;
  String unidadeMedida;
  DateTime datafim;
  DateTime dataini;
  double novopreco;

  ProdutoModel({
    this.descricao,
    this.preco,
    this.ean,
    this.categoria,
    this.codigo,
    this.estoque,
    this.unidadeMedida,
    this.datafim,
    this.novopreco,
    this.dataini
  });

  factory ProdutoModel.fromJson(Map doc){
    return ProdutoModel(
      descricao: doc["descricao"],
      preco: doc["preco"].toDouble(),
      ean: doc["ean"],
      categoria: doc["categoria"],
      codigo: doc["codigo"],
      estoque: doc["estoque"].toDouble(),
      unidadeMedida: doc["unidade_medida"],
      datafim: DateTime.parse(doc["datafim"]),
      dataini: DateTime.parse(doc["dataini"]),
      novopreco: doc["novopreco"].toDouble(),
    );
  }
}