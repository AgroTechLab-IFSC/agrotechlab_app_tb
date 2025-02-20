import 'package:flutter/foundation.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';

abstract interface class INoAuthRepository {
  Future<LoginResponse> getJwtToken({
    required String host,
    required String key,
  });

  Future<void> setUserFromJwtToken(LoginResponse loginData);

  Future<void> logout({RequestConfig? requestConfig, bool notifyUser = true});

  Future<void> reInit({
    required String endpoint,
    required VoidCallback onDone,
    required ErrorCallback onError,
  });

  bool isAuthenticated();

  AuthUser getAuthUserFromJwt(String jwt);

  AuthUser? getCurrentlyAuthenticatedUserOrNull();
}
