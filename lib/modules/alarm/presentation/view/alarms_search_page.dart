import 'package:flutter/material.dart';
import 'package:agrotechlab_app/config/routes/router.dart';
import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/locator.dart';
import 'package:agrotechlab_app/modules/alarm/alarms_list.dart';
import 'package:agrotechlab_app/modules/alarm/presentation/bloc/bloc.dart';
import 'package:agrotechlab_app/utils/ui/back_button_widget.dart';
import 'package:agrotechlab_app/widgets/tb_app_bar.dart';

class AlarmsSearchPage extends StatelessWidget {
  const AlarmsSearchPage({
    required this.tbContext,
    super.key,
  });

  final TbContext tbContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TbAppSearchBar(
        tbContext,
        onSearch: (searchText) => getIt<AlarmBloc>().add(
          AlarmSearchTextChanged(
            searchText: searchText,
          ),
        ),
        leading: BackButtonWidget(
          onPressed: () {
            getIt<AlarmBloc>().add(
              const AlarmSearchTextChanged(
                searchText: null,
              ),
            );

            getIt<ThingsboardAppRouter>().router.pop(context);
          },
        ),
      ),
      body: AlarmsList(tbContext: tbContext),
    );
  }
}
