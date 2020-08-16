class PerfilModel {
  String nome;
  String email;
  String id;

  PerfilModel({
    this.nome,
    this.email,
    this.id
  });

  factory PerfilModel.fromJson(Map json){
    return PerfilModel(
      nome: json["nome"],
      email: json["email"],
      id: json["id"]
    );
  }

}
