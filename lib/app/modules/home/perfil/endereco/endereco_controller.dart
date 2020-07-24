import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'endereco_controller.g.dart';

class EnderecoController = _EnderecoControllerBase with _$EnderecoController;

abstract class _EnderecoControllerBase with Store {
  final IEnderecoRepository _repository;

  _EnderecoControllerBase(this._repository);
}
