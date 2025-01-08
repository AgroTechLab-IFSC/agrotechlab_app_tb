import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/core/entity/entities_base.dart';
import 'package:agrotechlab_app/core/entity/entities_list.dart';
import 'package:agrotechlab_app/modules/audit_log/audit_logs_base.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';

class AuditLogsList extends BaseEntitiesWidget<AuditLog, TimePageLink>
    with AuditLogsBase, EntitiesListStateBase {
  AuditLogsList(
    TbContext tbContext,
    PageKeyController<TimePageLink> pageKeyController, {
    searchMode = false,
    super.key,
  }) : super(tbContext, pageKeyController, searchMode: searchMode);
}
