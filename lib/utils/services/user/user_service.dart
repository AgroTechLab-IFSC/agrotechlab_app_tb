import 'package:agrotechlab_app/locator.dart';
import 'package:agrotechlab_app/utils/services/communication/events.dart';
import 'package:agrotechlab_app/utils/services/communication/i_communication_service.dart';
import 'package:agrotechlab_app/utils/services/user/i_user_service.dart';

class UserService implements IUserService {
  UserService() {
    getIt<ICommunicationService>().on<UserLoggedInEvent>().listen((user) {});
  }
}
