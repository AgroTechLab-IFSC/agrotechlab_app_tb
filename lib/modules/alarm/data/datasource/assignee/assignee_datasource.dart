import 'package:agrotechlab_app/modules/alarm/data/datasource/assignee/i_assignee_datasource.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';

class AssigneeDatasource implements IAssigneeDatasource {
  const AssigneeDatasource({required this.tbClient});

  final ThingsboardClient tbClient;

  @override
  Future<PageData<UserInfo>> fetchAssignee(PageLink pageKey) async {
    return tbClient.getUserService().getUsersInfo(pageKey);
  }
}
