import 'package:common/exception/failure.dart';
import 'package:profile/application/iprofile_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:profile/data/repository/iprofile_repository.dart';
import 'package:profile/data/repository/profile_repository.dart';

final profileServiceProvider = Provider<IProfileService>((ref) {
  final settingRepository = ref.watch(profileRepositoryProvider);

  return ProfileService(settingRepository);
});

final class ProfileService implements IProfileService {
  final IProfileRepository _profileRepository;

  ProfileService(this._profileRepository);



  @override
  Future<Result<Map<String, String>, Failure>> getAllSetting() async {
    try {
      final result = await _profileRepository.getAllSettings();

      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> deleteMe() async {
    try {
      // delete account api call
      await _profileRepository.deleteMe();
       // clear token from local storage
      await _profileRepository.clearToken();

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> logout() async {
    try {
      // logout api call
      await _profileRepository.logout();
      // clear token from local storage
      await _profileRepository.clearToken();

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }
}
