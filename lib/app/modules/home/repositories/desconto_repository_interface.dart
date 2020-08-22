abstract class IDescontoRepository{
  Future<int> getDesconto(String codigo, String data);
}