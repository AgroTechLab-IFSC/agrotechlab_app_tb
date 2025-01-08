import 'package:fluro/fluro.dart';
import 'package:agrotechlab_app/config/routes/router.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/modules/version/route/version_route_arguments.dart';
import 'package:agrotechlab_app/modules/version/view/update_required_page.dart';

class VersionRoutes extends TbRoutes {
  VersionRoutes(TbContext tbContext) : super(tbContext);

  static const updateRequiredRoutePath = '/updateRequired';

  late final updateRequiredHandler = Handler(
    handlerFunc: (context, params) {
      final args = context?.settings?.arguments as VersionRouteArguments;
      return UpdateRequiredPage(tbContext, arguments: args);
    },
  );

  @override
  void doRegisterRoutes(router) {
    router.define(updateRequiredRoutePath, handler: updateRequiredHandler);
  }
}
