part of '../common.dart';

final appScrollControllerProvider =
    AutoDisposeNotifierProvider<AppScrollController, ScrollController?>(
      AppScrollController.new,
    );

class AppScrollController extends AutoDisposeNotifier<ScrollController?> {
  @override
  ScrollController? build() {
    ref.onCancel(() {
      debugPrint('AppScrollController canceled');
    });
    ref.onResume(() {
      debugPrint('AppScrollController resumed');
    });
    ref.onDispose(() {
      debugPrint('AppScrollController disposed');
    });
    ref.onAddListener(() {
      debugPrint('AppScrollController added listener');
    });
    ref.onRemoveListener(() {
      debugPrint('AppScrollController removed listener');
    });
    return null;
  }

  void setScrollController(ScrollController scrollController) {
    state = scrollController;
  }
}
