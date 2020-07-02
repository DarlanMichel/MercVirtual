import 'package:mercadovirtual/app/modules/home/models/categoria_model.dart';

abstract class ICategoriaRepository{
  Stream<List<CategoriaModel>> getCategoria();
}