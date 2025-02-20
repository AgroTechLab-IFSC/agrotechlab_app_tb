import 'package:agrotechlab_app/core/entity/entities_base.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';

class DashboardsQueryCtrl extends PageKeyController<PageLink> {
  DashboardsQueryCtrl({int pageSize = 20}) : super(PageLink(20));

  @override
  PageLink nextPageKey(PageLink pageKey) {
    return pageKey.nextPageLink();
  }
}
