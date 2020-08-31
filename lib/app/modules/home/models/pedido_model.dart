class PedidoModel {
  final String id;
  final int status;
  final double valorTotal;
  final int idPedido;
//  final FormaPagamento formaPagamento;
  final List<Carrinho> carrinhos;

  PedidoModel({
    this.id,
    this.status,
    this.valorTotal,
    this.idPedido,
//    this.formaPagamento,
    this.carrinhos,
  });


  factory PedidoModel.fromJson(Map json){
    return PedidoModel(
      id: json["id"],
      status: json["status"],
      valorTotal: json["valor_total"].toDouble(),
      idPedido: json["id_carrinho"],
//      formaPagamento: FormaPagamento.fromJson(json["forma_pagamento"]),
      carrinhos: List<Carrinho>.from(json["carrinhos"].map((x) => Carrinho.fromJson(x))),
    );
  }
}

class Carrinho {
  final int qtd;
  final Produto produto;

  Carrinho({
    this.qtd,
    this.produto,
  });

  factory Carrinho.fromJson(Map json){
    return Carrinho(
      qtd: json["qtd"],
      produto: Produto.fromJson(json["produto"]),
    );
  }
}

class Produto {
  final String descricao;
  final double preco;

  Produto({
    this.descricao,
    this.preco,
  });

  factory Produto.fromJson(Map json){
    return Produto(
      descricao: json["descricao"],
      preco: json["preco"].toDouble(),
    );
  }
}

class FormaPagamento {
  final String nome;

  FormaPagamento({
    this.nome,
  });

  factory FormaPagamento.fromJson(Map json){
    return FormaPagamento(
      nome: json["nome"],
    );
  }
}
