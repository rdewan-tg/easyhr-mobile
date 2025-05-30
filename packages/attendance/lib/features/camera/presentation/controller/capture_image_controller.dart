import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:attendance/features/camera/presentation/state/capture_image_state.dart';

final captureImageControllerProvider =
    NotifierProvider<CaptureImageController, CaptureImageState>(
  CaptureImageController.new,
);

class CaptureImageController extends Notifier<CaptureImageState> {
  @override
  CaptureImageState build() {
    return CaptureImageState();
  }

  void setLoading(bool isLoading) =>
      state = state.copyWith(isLoading: isLoading);
}
