part of '../../../../../auth.dart';

class AlreadyHaveAccount extends ConsumerWidget {
  final VoidCallback onPressed;
  const AlreadyHaveAccount({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.localizations('auth.alreadyHaveAccount'),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            context.localizations('auth.login'),
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
