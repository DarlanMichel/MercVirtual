import 'package:mercadovirtual/app/modules/home/perfil/cadastro_perfil/cadastro_perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/cadastro_perfil/cadastro_perfil_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pagamento/pagamento_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pagamento/pagamento_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pedido/pedido_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pedido/pedido_page.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/desconto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/desconto_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/promocao_repository.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_widget.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController(i.get<PerfilRepository>())),
        Bind((i) => CarrinhoController(i.get<CarrinhoRepository>(), i.get<DescontoRepository>())),
        Bind((i) => PromocaoScreenController(i.get<PromocaoRepository>())),
        Bind((i) => TabpageprodController(
            i.get<ProdutoRepository>(),  i.get<CategoriaRepository>(), 0)),
        Bind((i) => HomeController()),
        Bind((i) => EnderecoController(i.get<EnderecoRepository>())),
        Bind((i) => CadastroEnderecoController(i.get<EnderecoRepository>())),
        Bind((i) => PedidoController(i.get<PedidoRepository>())),
        Bind((i) => CadastroPerfilController(i.get<PerfilRepository>())),
        Bind((i) => PagamentoController(i.get<FormaPagtoRepository>())),
        ///repositories
        Bind((i) => PromocaoRepository(i.get<HasuraConnect>())),
        Bind<ICarrinhoRepository>((i) => CarrinhoRepository(i.get<HasuraConnect>())),
        Bind<IProdutoRepository>((i) => ProdutoRepository(i.get<HasuraConnect>())),
        Bind<ICategoriaRepository>((i) => CategoriaRepository(i.get<HasuraConnect>())),
        Bind<IPerfilRepository>((i) => PerfilRepository(i.get<HasuraConnect>())),
        Bind<IEnderecoRepository>((i) => EnderecoRepository(i.get<HasuraConnect>())),
        Bind<IPedidoRepository>((i) => PedidoRepository(i.get<HasuraConnect>())),
        Bind<IFormaPagtoRepository>((i) => FormaPagtoRepository(i.get<HasuraConnect>())),
        Bind<IDescontoRepository>((i) => DescontoRepository(i.get<HasuraConnect>())),
        ///Outros
        Bind((i) =>
            HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => HomePage()),
        ModularRouter("/promocao", child: (_, args) => PromocaoScreenWidget()),
        ModularRouter("/produtos/:categ",
            child: (_, args) => TabpageprodWidget(categoria: args.data)),
        ModularRouter("/carrinho", child: (_, args) => CarrinhoWidget()),
        ModularRouter("/perfil", child: (_, args) => PerfilWidget()),
        ModularRouter("/perfil/endereco", child: (_, args) => EnderecoPage()),
        ModularRouter('/perfil/endereco/endcadastro', child: (_, args) => CadastroEnderecoPage()),
        ModularRouter("/perfil/pedidos", child: (_, args) => PedidoPage()),
        ModularRouter('/perfil/cadastroperfil', child: (_, args) => CadastroPerfilPage()),
        ModularRouter('/perfil/pagamento', child: (_, args) => PagamentoPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
