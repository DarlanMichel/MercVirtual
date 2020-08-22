import 'package:mercadovirtual/app/modules/home/models/perfil_model.dart';

abstract class IPerfilRepository{
  Stream<List<PerfilModel>> getNome();

  Future save(String nome, String email, String id);

  Future insert(String nome, String email, String id);
}