import 'package:fluro/fluro.dart';
import 'package:agrotechlab_app/config/routes/router.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/modules/main/main_page.dart';

class MainRoutes extends TbRoutes {
  MainRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define(
      '/main',
      handler: Handler(
        handlerFunc: (context, params) {
          return MainPage(tbContext);
        },
      ),
    );
  }
}
