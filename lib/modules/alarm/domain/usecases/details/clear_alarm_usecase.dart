import 'package:agrotechlab_app/modules/alarm/domain/repository/details/i_alarm_details_repository.dart';
import 'package:agrotechlab_app/thingsboard_client.dart';
import 'package:agrotechlab_app/utils/usecase.dart';

final class ClearAlarmUseCase extends UseCase<Future<AlarmInfo>, AlarmId> {
  const ClearAlarmUseCase(this.repository);

  final IAlarmDetailsRepository repository;

  @override
  Future<AlarmInfo> call(AlarmId params) {
    return repository.clearAlarm(params);
  }
}
