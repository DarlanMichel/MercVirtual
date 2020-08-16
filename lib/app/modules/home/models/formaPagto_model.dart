class FormaPagtoModel {
  String nome;
  int id;

  FormaPagtoModel({
    this.nome,
    this.id
  });

  factory FormaPagtoModel.fromJson(Map json){
    return FormaPagtoModel(
        nome: json["nome"],
        id: json["id"]
    );
  }

}