import 'package:blog/data/dto/blog_response.dart';
import 'package:blog/data/dto/blogs_response.dart';
import 'package:blog/data/repository/iblog_repository.dart';
import 'package:blog/data/source/remote/blog_api.dart';
import 'package:common/common.dart';
import 'package:common/logger/logger_provider.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/remote/api/core_api_service.dart';
import 'package:core/data/remote/dtos/request/set_me_firebase_token_request.dart';
import 'package:core/data/remote/dtos/response/set_me_firebase_token_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final blogRepositoryProvider = Provider.autoDispose<IBlogRepository>((ref) {
  final BlogApi blogApi = ref.watch(blogApiProvider);
  final SettingDao settingDao = ref.watch(settingDaoProvider);
  final CoreApiService coreApiService = ref.watch(coreApiServiceProvider);
  final logger = ref.watch(loggerProvider('BlogRepository'));

  return BlogRepository(blogApi, settingDao, coreApiService, logger);
});

final class BlogRepository with DioExceptionMapper implements IBlogRepository {
  final BlogApi blogApi;
  final SettingDao _settingDao;
  final CoreApiService _coreApiService;
  final Logger _logger;

  BlogRepository(
    this.blogApi,
    this._settingDao,
    this._coreApiService,
    this._logger,
  );

  @override
  Future<BlogResponse> getBlogById(int id) async {
    try {
      return await blogApi.getBlogById(id);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<BlogsResponse> getBlogs() async {
    try {
      return await blogApi.getBlogs();
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<SetMeFirebaseTokenResponse> setFirebaseDeviceToken(
    SetMeFirebaseTokenRequest request,
  ) async {
    try {
      return await _coreApiService.setMeFirebaseDeviceToken(request);
    } on DioException catch (e, s) {
      _logger.info('setFirebaseDeviceToken', e, s);
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      _logger.info('setFirebaseDeviceToken', e, s);
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
