import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/core/entity/entities_base.dart';
import 'package:agrotechlab_app/core/entity/entities_list.dart';
import 'package:agrotechlab_app/modules/device/devices_base.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';

class DevicesList extends BaseEntitiesWidget<EntityData, EntityDataQuery>
    with DevicesBase, EntitiesListStateBase {
  final bool displayDeviceImage;

  DevicesList(
    TbContext tbContext,
    PageKeyController<EntityDataQuery> pageKeyController, {
    super.key,
    searchMode = false,
    this.displayDeviceImage = false,
  }) : super(tbContext, pageKeyController, searchMode: searchMode);

  @override
  bool displayCardImage(bool listWidgetCard) => displayDeviceImage;
}
