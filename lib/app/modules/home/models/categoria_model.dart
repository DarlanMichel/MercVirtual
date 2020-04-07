// To parse this JSON data, do
//
//     final categoriaModel = categoriaModelFromJson(jsonString);

import 'dart:convert';

class CategoriaModel {
  final String desc;

  CategoriaModel({
    this.desc,
  });

  CategoriaModel copyWith({
    String desc,
  }) =>
      CategoriaModel(
        desc: desc ?? this.desc,
      );

  factory CategoriaModel.fromJson(String str) => CategoriaModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoriaModel.fromMap(Map<String, dynamic> json) => CategoriaModel(
    desc: json["desc"],
  );

  Map<String, dynamic> toMap() => {
    "desc": desc,
  };

  static List<CategoriaModel> fromJsonList(List list){
    if(list == null) return null;
    return list.map<CategoriaModel>((item)=> CategoriaModel.fromMap(item)).toList();
  }

}
