part of 'package:attendance/attendance.dart';

class BottomSheetWidget extends ConsumerStatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends ConsumerState<BottomSheetWidget> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Container(
          width: double.infinity, // Force full width
          padding: EdgeInsets.all(kLarge),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CurrentAddressWidget(),              
              const SizedBox(height: kMedium),
              CaptureImageButtonWidget(),
              const SizedBox(height: kMedium),

              if (imageFile != null) ...[
                Image.file(
                  imageFile!,
                  height: 100,
                  width: 100,
                ),
              ],
            ],
          ),
        ),
      );
  }
}