import 'package:blog/application/blog_service.dart';
import 'package:core/data/remote/dtos/request/set_me_firebase_token_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog/presentation/state/blog_state.dart';

final blogControllerProvider = NotifierProvider<BlogController, BlogState>(
  BlogController.new,
);

class BlogController extends Notifier<BlogState> {
  @override
  BlogState build() {
    return BlogState();
  }

  Future<void> getBlogs() async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await ref.read(blogServiceProvider).getBlogs();
    result.when(
      (success) {
        state = state.copyWith(isLoading: false, blogs: success);
      },
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
      },
    );
  }

  Future<void> getBlogById(int id) async {
    // if blog is already loaded return
    // if blog is loading return
    if (state.isLoading || state.blog?.id == id) return;

    state = state.copyWith(isLoading: true, error: null);

    final result = await ref.read(blogServiceProvider).getBlogById(id);
    result.when(
      (success) {
        state = state.copyWith(isLoading: false, blog: success);
      },
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
      },
    );
  }

  Future<void> setFirebaseDeviceToken(String token) async {
    // setup the request body
    final request = SetMeFirebaseTokenRequest(deviceToken: token);
    // update the state
    state = state.copyWith(error: null);
    // call the api
    final result = await ref
        .read(blogServiceProvider)
        .setFirebaseDeviceToken(request);
    result.when((success) {}, (failure) {
      state = state.copyWith(error: failure.message);
    });
  }
}
