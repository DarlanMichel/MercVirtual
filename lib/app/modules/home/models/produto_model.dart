class ProdutoModel{
  String descricao;
  double preco;
  int ean;
  int categoria;
  int codigo;
  double estoque;
  String unidadeMedida;

  ProdutoModel({
    this.descricao,
    this.preco,
    this.ean,
    this.categoria,
    this.codigo,
    this.estoque,
    this.unidadeMedida,
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
    );
  }
}