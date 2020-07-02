import 'dart:convert';

class CategoriaModel {
  final String desc;
  final int codSecao;

  CategoriaModel({
    this.desc,
    this.codSecao,
  });

  CategoriaModel copyWith({
    String desc,
    int codSecao,
  }) =>
      CategoriaModel(
        desc: desc ?? this.desc,
        codSecao: codSecao ?? this.codSecao,
      );

  factory CategoriaModel.fromJson(String str) => CategoriaModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoriaModel.fromMap(Map<String, dynamic> json) => CategoriaModel(
    desc: json["desc"],
    codSecao: json["cod_secao"],
  );

  Map<String, dynamic> toMap() => {
    "desc": desc,
    "cod_secao": codSecao,
  };

  static List<CategoriaModel> fromJsonList(List list){
    if(list == null) return null;
    return list.map<CategoriaModel>((item)=> CategoriaModel.fromMap(item)).toList();
  }

}
