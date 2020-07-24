class PerfilModel {
  String nome;
  String email;

  PerfilModel({
    this.nome,
    this.email
  });

  factory PerfilModel.fromJson(Map json){
    return PerfilModel(
      nome: json["nome"],
      email: json["email"]
    );
  }

}
