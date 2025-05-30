import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:profile/application/profile_service.dart';
import 'package:profile/presentation/state/profile_state.dart';

final profileControllerProvider =
    AutoDisposeNotifierProvider<ProfileController, ProfileState>(
  ProfileController.new,
);

final class ProfileController extends AutoDisposeNotifier<ProfileState> {
  StreamSubscription<String>? _themeModeSubscription;

  @override
  ProfileState build() {
    // Cancel the subscription when the controller is disposed
    ref.onDispose(() {
      _themeModeSubscription?.cancel();
    });

    // get all settings when the controller is created
    getAllSettings();

    // Return the initial state
    return const ProfileState();
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    // call api - logout
    final result = await ref.read(profileServiceProvider).logout();
    result.when(
      (success) {
        // set auth state - false
        ref.read(goRouterNotifierProvider).isLoggedIn = false;
        state = state.copyWith(isLoading: false);
      },
      (error) {
        state = state.copyWith(isLoading: false, errorMsg: error.message);
      },
    );
  }

  Future<void> deleteMyAccount() async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    // call api - delete account
    final result = await ref.read(profileServiceProvider).deleteMe();

    result.when(
      (success) {
        // set auth state - false
        ref.read(goRouterNotifierProvider).isLoggedIn = false;
        state = state.copyWith(isLoading: false);
      },
      (error) {
        state = state.copyWith(isLoading: false, errorMsg: error.message);
      },
    );
  }

  Future<void> getAllSettings() async {
    final result = await ref.read(profileServiceProvider).getAllSetting();

    result.when(
      (success) {
        state = state.copyWith(settings: success);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }
}
