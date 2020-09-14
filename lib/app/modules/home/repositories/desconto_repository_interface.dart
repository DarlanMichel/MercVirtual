abstract class IDescontoRepository{
  Future<int> getDesconto(String codigo, String data);

  Future save(String codigo);
}