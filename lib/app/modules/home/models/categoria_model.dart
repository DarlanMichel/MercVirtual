class CategoriaModel {
  String desc;
  int codSecao;

  CategoriaModel({
    this.desc,
    this.codSecao,
  });

  factory CategoriaModel.fromJson(Map json){
    return CategoriaModel(
      desc: json["desc"],
      codSecao: json["cod_secao"],
    );
  }

}
