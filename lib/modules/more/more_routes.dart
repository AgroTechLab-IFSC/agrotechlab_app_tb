import 'package:fluro/fluro.dart';
import 'package:agrotechlab_app/config/routes/router.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/modules/more/more_page.dart';

class MoreRoutes extends TbRoutes {
  late final moreHandler = Handler(
    handlerFunc: (context, params) {
      return MorePage(tbContext);
    },
  );

  MoreRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define('/more', handler: moreHandler);
  }
}
