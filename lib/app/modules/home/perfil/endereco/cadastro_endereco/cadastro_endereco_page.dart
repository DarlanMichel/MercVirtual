import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/textfield_sem_icon/textfield_sem_icon_widget.dart';
import 'package:oktoast/oktoast.dart';
import 'cadastro_endereco_controller.dart';

class CadastroEnderecoPage extends StatefulWidget {
  final String title;
  final EnderecoModel model;
  const CadastroEnderecoPage({Key key, this.title = "Cadastro de Endereços", this.model}) : super(key: key);

  @override
  _CadastroEnderecoPageState createState() => _CadastroEnderecoPageState();
}

class _CadastroEnderecoPageState
    extends ModularState<CadastroEnderecoPage, CadastroEnderecoController> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    if (widget.model != null) {
      controller.setDescricao(widget.model.descricao);
      controller.setCEP(widget.model.cep);
      controller.setRua(widget.model.rua);
      controller.setNum(widget.model.numero);
      controller.setComplemento(widget.model.complemento);
      controller.setBairro(widget.model.bairro);
      controller.setReferencia(widget.model.referencia);
      controller.setCidade(widget.model.cidade);
      controller.setUF(widget.model.estado);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextfieldSemIconWidget(
                keyboard: TextInputType.text,
                text: "Descrição do Endereço",
                change: controller.setDescricao,
                controller: controller.descricao,
                validator: (String text){
                  if (text.isEmpty || text.trim() == ''){
                    return 'Campo obrigatório';
                  }else{
                    return null;
                  }
                },
              ),
              TextfieldSemIconWidget(
                keyboard: TextInputType.number,
                text: "CEP",
                change: controller.setCEP,
                controller: controller.cep,
                validator: (String text){
                  if (text.isEmpty || text.trim() == ''){
                    return 'Campo obrigatório';
                  }else if(text.length != 8){
                    return 'CEP Inválido';
                  }else{
                    return null;
                  }
                },
              ),
              Row(
                children: [
                  Expanded(child: Observer(
                    builder: (_) {
                      return TextfieldSemIconWidget(
                        keyboard: TextInputType.text,
                        text: "Rua",
                        change: controller.setRua,
  //                        if (controller.rua != null) {
 //                           TextEditingController().selection = TextSelection.collapsed(offset: controller.rua.length);
//                          } else {
//                            TextEditingController().selection = TextSelection.collapsed(offset:0)
//                        },
                        controller: controller.rua,
                        validator: (String text){
                          if (text.isEmpty || text.trim() == ''){
                            return 'Campo obrigatório';
                          }else{
                            return null;
                          }
                        },
                      );
                    },
                  )),
                  SizedBox(
                    width: 100,
                    child: TextfieldSemIconWidget(
                      keyboard: TextInputType.text,
                      text: "Nº",
                      change: controller.setNum,
                      controller: controller.num,
                      validator: (String text){
                        if (text.isEmpty || text.trim() == ''){
                          return 'Campo obrigatório';
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
              TextfieldSemIconWidget(
                keyboard: TextInputType.text,
                text: "Complemento",
                change: controller.setComplemento,
                controller: controller.complemento,
              ),
              Observer(
                builder: (_) {
                  return TextfieldSemIconWidget(
                    keyboard: TextInputType.text,
                    text: "Bairro",
                    change: controller.setBairro,
                    controller: controller.bairro,
                    validator: (String text){
                      if (text.isEmpty || text.trim() == ''){
                        return 'Campo obrigatório';
                      }else{
                        return null;
                      }
                    },
                  );
                },
              ),
              TextfieldSemIconWidget(
                keyboard: TextInputType.text,
                text: "Referência",
                change: controller.setReferencia,
                controller: controller.referencia,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Observer(
                      builder: (_) {
                        return TextfieldSemIconWidget(
                          keyboard: TextInputType.text,
                          text: "Cidade",
                          change: controller.setCidade,
                          controller: controller.cidade,
                          validator: (String text){
                            if (text.isEmpty || text.trim() == ''){
                              return 'Campo obrigatório';
                            }else{
                              return null;
                            }
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Observer(
                      builder: (_) {
                        return TextfieldSemIconWidget(
                          keyboard: TextInputType.text,
                          text: "UF",
                          change: controller.setUF,
                          controller: controller.uf,
                          validator: (String text){
                            if (text.isEmpty || text.trim() == ''){
                              return 'Campo obrigatório';
                            }else if(text.length != 2){
                              return 'UF Inválida!';
                            }else{
                              return null;
                            }
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomRaisebuttonWidget(
                text: "Salvar",
                cor: Theme.of(context).accentColor,
                textcolor: Colors.white,
                function: () {
                 if ( _formkey.currentState.validate()){
                    if (widget.model == null) {
                      controller.save(
                          controller.bairro,
                          controller.cep,
                          controller.cidade,
                          controller.complemento,
                          controller.descricao,
                          controller.uf,
                          controller.num,
                          controller.referencia,
                          controller.rua);
                    } else {
                      widget.model.bairro = controller.bairro;
                      widget.model.cep = controller.cep;
                      widget.model.cidade = controller.cidade;
                      widget.model.complemento = controller.complemento;
                      widget.model.descricao = controller.descricao;
                      widget.model.estado = controller.uf;
                      widget.model.numero = controller.num;
                      widget.model.referencia = controller.referencia;
                      widget.model.rua = controller.rua;
                      controller.update(widget.model);
                    }
                    showToast(
                      "Endereço cadastrado!",
                      position: ToastPosition.center,
                      duration: Duration(seconds: 3),
                    );
                    Navigator.pop(context);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
