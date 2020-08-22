class DescontoModel {
  String codigo;
  double desconto;
  String data;

  DescontoModel({
    this.codigo,
    this.desconto,
    this.data
  });

  factory DescontoModel.fromJson(Map json){
    return DescontoModel(
      codigo: json["codigo"],
      desconto: json["desconto"].toDouble(),
      data: json["validade"]
    );
  }

}