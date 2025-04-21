import 'package:auth/features/login/application/ilogin_service.dart';
import 'package:auth/features/login/data/dto/request/login_request.dart';
import 'package:auth/features/login/data/repository/ilogin_repository.dart';
import 'package:auth/features/login/data/repository/login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';

final loginServiceProvider = Provider.autoDispose<ILoginService>((ref) {
  final loginRepository = ref.watch(loginRepositoryProvider);

  return LoginService(loginRepository);
});

final class LoginService implements ILoginService {
  final ILoginRepository _loginRepository;

  LoginService(this._loginRepository);

  @override
  Future<Result<bool, Failure>> login(LoginRequest loginRequest) async {
    try {
      final result = await _loginRepository.login(loginRequest);

      await _loginRepository.upsertMultipleSettings({
        'email': result.data.user.email,
        'name': result.data.user.name,
        'phoneNumber': result.data.user.phoneNumber ?? '-',
        'companyId': result.data.user.company.id.toString(),
        'companyName': result.data.user.company.name,
        'companyCode': result.data.user.company.companyCode ?? '-',
        'timeZone': result.data.user.company.timeZone,
      });

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  @override
  Future<String?> getUuidFromSecureStorage() async {
    try {
      return await _loginRepository.getUuidFromSecureStorage();
    } on Failure catch (_) {
      rethrow;
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
