import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:agrotechlab_app/config/routes/router.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/modules/audit_log/audit_logs_page.dart';

class AuditLogsRoutes extends TbRoutes {
  late final auditLogsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      var searchMode = params['search']?.first == 'true';
      return AuditLogsPage(tbContext, searchMode: searchMode);
    },
  );

  AuditLogsRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define('/auditLogs', handler: auditLogsHandler);
  }
}
