// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SectionScreenController on _SectionScreenBase, Store {
  final _$listaCategoriaAtom = Atom(name: '_SectionScreenBase.listaCategoria');

  @override
  ObservableStream<List<CategoriaModel>> get listaCategoria {
    _$listaCategoriaAtom.context.enforceReadPolicy(_$listaCategoriaAtom);
    _$listaCategoriaAtom.reportObserved();
    return super.listaCategoria;
  }

  @override
  set listaCategoria(ObservableStream<List<CategoriaModel>> value) {
    _$listaCategoriaAtom.context.conditionallyRunInAction(() {
      super.listaCategoria = value;
      _$listaCategoriaAtom.reportChanged();
    }, _$listaCategoriaAtom, name: '${_$listaCategoriaAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'listaCategoria: ${listaCategoria.toString()}';
    return '{$string}';
  }
}
