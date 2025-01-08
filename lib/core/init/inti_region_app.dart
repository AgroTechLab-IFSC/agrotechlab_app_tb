import 'package:flutter/material.dart';
import 'package:agrotechlab_app/core/auth/login/region.dart';
import 'package:agrotechlab_app/core/auth/login/select_region_screen.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/core/context/tb_context_widget.dart';
import 'package:agrotechlab_app/locator.dart';
import 'package:agrotechlab_app/utils/services/local_database/i_local_database_service.dart';
import 'package:agrotechlab_app/widgets/tb_progress_indicator.dart';

class ThingsboardInitRegionApp extends TbPageWidget {
  ThingsboardInitRegionApp(TbContext tbContext, {Key? key})
      : super(tbContext, key: key);

  @override
  State<StatefulWidget> createState() => _ThingsboardInitAppState();
}

class _ThingsboardInitAppState extends TbPageState<ThingsboardInitRegionApp> {
  Region? selectedRegion;

  @override
  void initState() {
    super.initState();

    selectedRegion = getIt<ILocalDatabaseService>().getSelectedRegion();
    if (selectedRegion != null) {
      initTbContext();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (selectedRegion == null) {
      return SelectRegionScreen(tbContext);
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: const TbProgressIndicator(size: 50.0),
      ),
    );
  }
}
