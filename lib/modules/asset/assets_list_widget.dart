import 'package:agrotechlab_app/core/context/tb_context.dart';
import 'package:agrotechlab_app/core/entity/entities_list_widget.dart';
import 'package:agrotechlab_app/modules/asset/assets_base.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';

class AssetsListWidget extends EntitiesListPageLinkWidget<AssetInfo>
    with AssetsBase {
  AssetsListWidget(
    TbContext tbContext, {
    super.key,
    EntitiesListWidgetController? controller,
  }) : super(tbContext, controller: controller);

  @override
  void onViewAll() {
    navigateTo('/assets');
  }
}
