import 'package:flutter/material.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/core/context/tb_context_widget.dart';
import 'package:agrotechlab_app/core/entity/entities_base.dart';
import 'package:agrotechlab_app/modules/audit_log/audit_logs_list.dart';
import 'package:agrotechlab_app/widgets/tb_app_bar.dart';

class AuditLogsPage extends TbContextWidget {
  final bool searchMode;

  AuditLogsPage(TbContext tbContext, {this.searchMode = false, super.key})
      : super(tbContext);

  @override
  State<StatefulWidget> createState() => _AuditLogsPageState();
}

class _AuditLogsPageState extends TbContextState<AuditLogsPage> {
  final TimePageLinkController _timePageLinkController =
      TimePageLinkController();

  @override
  Widget build(BuildContext context) {
    var auditLogsList = AuditLogsList(
      tbContext,
      _timePageLinkController,
      searchMode: widget.searchMode,
    );
    PreferredSizeWidget appBar;
    if (widget.searchMode) {
      appBar = TbAppSearchBar(
        tbContext,
        onSearch: (searchText) =>
            _timePageLinkController.onSearchText(searchText),
      );
    } else {
      appBar = TbAppBar(
        tbContext,
        title: Text(auditLogsList.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              navigateTo('/auditLogs?search=true');
            },
          ),
        ],
      );
    }
    return Scaffold(appBar: appBar, body: auditLogsList);
  }

  @override
  void dispose() {
    _timePageLinkController.dispose();
    super.dispose();
  }
}
