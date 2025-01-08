import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:agrotechlab_app/config/routes/router.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/modules/home/home_page.dart';

class HomeRoutes extends TbRoutes {
  late var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return HomePage(tbContext);
    },
  );

  HomeRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define('/home', handler: homeHandler);
  }
}
