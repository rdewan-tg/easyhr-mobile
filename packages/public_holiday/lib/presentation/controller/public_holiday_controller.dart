import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:public_holiday/application/public_holiday_service.dart';
import 'package:public_holiday/presentation/state/public_holiday_state.dart';

final publicHolidayControllerProvider =
    AutoDisposeNotifierProvider<PublicHolidayController, PublicHolidayState>(
      () => PublicHolidayController(),
    );

class PublicHolidayController extends AutoDisposeNotifier<PublicHolidayState> {
  @override
  PublicHolidayState build() {
    return PublicHolidayState();
  }

  Future<void> getPublicHoliday() async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await ref
        .read(publicHolidayServiceProvider)
        .getPublicHoliday();
    result.when(
      (success) {
        state = state.copyWith(isLoading: false, publicHolidays: success);
      },
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
      },
    );
  }
}
