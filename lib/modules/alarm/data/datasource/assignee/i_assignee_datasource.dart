import 'package:agrotechlab_app/thingsboard_client.dart';

abstract interface class IAssigneeDatasource {
  Future<PageData<UserInfo>> fetchAssignee(PageLink pageKey);
}
