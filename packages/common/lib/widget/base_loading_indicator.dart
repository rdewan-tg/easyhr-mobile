part of '../common.dart';

class BaseLoadingIndicator extends ConsumerWidget {
  const BaseLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        // Semi-transparent background
        const ModalBarrier(
          color: Color.fromRGBO(0, 0, 0, 0.8), // 80% transparent black
          dismissible: false,
        ),
        Center(
          child: LoadingAnimationWidget.progressiveDots(
            color: Colors.white,
            size: 60,
          ),
        ),
      ],
    );
  }
}
