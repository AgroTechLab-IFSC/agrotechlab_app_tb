import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/core/entity/entities_base.dart';
import 'package:agrotechlab_app/core/entity/entities_list_widget.dart';
import 'package:agrotechlab_app/modules/device/devices_base.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';

class DevicesListWidget extends EntitiesListWidget<EntityData, EntityDataQuery>
    with DevicesBase {
  DevicesListWidget(
    TbContext tbContext, {
    super.key,
    EntitiesListWidgetController? controller,
  }) : super(tbContext, controller: controller);

  @override
  void onViewAll() {
    navigateTo('/devices');
  }

  @override
  PageKeyController<EntityDataQuery> createPageKeyController() =>
      DeviceQueryController(pageSize: 5);
}
