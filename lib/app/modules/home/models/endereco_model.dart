class EnderecoModel {
  int id;
  String descricao;
  String rua;
  String numero;
  String bairro;
  String cidade;
  String estado;
  String complemento;
  String referencia;
  String cep;

  EnderecoModel({
    this.id,
    this.descricao,
    this.rua,
    this.numero,
    this.bairro,
    this.cidade,
    this.estado,
    this.complemento,
    this.referencia,
    this.cep,
  });

  factory EnderecoModel.fromJson(Map json){
    return EnderecoModel(
      id: json["id_end"],
      descricao: json["descricao"],
      rua: json["rua"],
      numero: json["numero"],
      bairro: json["bairro"],
      cidade: json["cidade"],
      estado: json["estado"],
      complemento: json["complemento"],
      referencia: json["referencia"],
      cep: json["cep"],
    );
  }

}