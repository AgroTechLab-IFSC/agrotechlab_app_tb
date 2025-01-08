import 'package:flutter/material.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/core/context/tb_context_widget.dart';
import 'package:agrotechlab_app/core/entity/entities_base.dart';
import 'package:agrotechlab_app/modules/device/device_profiles_grid.dart';
import 'package:agrotechlab_app/widgets/tb_app_bar.dart';

class DevicesPage extends TbPageWidget {
  DevicesPage(TbContext tbContext, {super.key}) : super(tbContext);

  @override
  State<StatefulWidget> createState() => _DevicesPageState();
}

class _DevicesPageState extends TbPageState<DevicesPage> {
  final PageLinkController _pageLinkController = PageLinkController();

  @override
  Widget build(BuildContext context) {
    final deviceProfilesList = DeviceProfilesGrid(
      tbContext,
      _pageLinkController,
    );
    return Scaffold(
      appBar: TbAppBar(
        tbContext,
        title: Text(deviceProfilesList.title),
      ),
      body: deviceProfilesList,
    );
  }

  @override
  void dispose() {
    _pageLinkController.dispose();
    super.dispose();
  }
}
