part of '../../../../../auth.dart';

class PasswordFormField extends ConsumerWidget {
  final TextEditingController passwordController;
  const PasswordFormField({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscure = ref.watch(
      loginControllerProvider.select((value) => value.isPasswordVisible),
    );

    return TextFormField(
      controller: passwordController,
      obscureText: isObscure ? false : true,
      decoration: InputDecoration(
        labelText: context.localizations('auth.password'),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(kSmall)),
        ),
        suffixIcon: const PasswordVisibility(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.localizations('auth.passwordMessage');
        } else if (value.length < 8) {
          return context.localizations('auth.passwordValidation');
        }
        return null;
      },
    );
  }
}
