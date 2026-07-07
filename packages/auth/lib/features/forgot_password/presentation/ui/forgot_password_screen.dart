part of '../../../../auth.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(title: Text(context.localizations('auth.forgotPassword'))),
      body: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: context.localizations('auth.email'),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(kSmall)),
                  ),
                  prefix: const Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.localizations('auth.emailMessage');
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return context.localizations('auth.emailValidation');
                  }
                  return null;
                },
              ),
              const SizedBox(height: kMedium),
              ForgotPasswordButton(onPressed: _sendForgotPasswordEmail),
            ],
          ),
        ),
      ),
    );
  }

  void _sendForgotPasswordEmail() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final email = _emailController.text;
      // call the service
      ref.read(forgotPasswordControllerProvider.notifier).forgotPassword(email);
    }
  }

  void _clearController() {
    _emailController.clear();
  }

  void _navigateToLogin() {
    context.go('/login');
  }

  void _listener() {
    // listen for error
    ref.listen(
      forgotPasswordControllerProvider.select((value) => value.error),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: context.themeColor.colorScheme.error,
              content: Text(next),
            ),
          );
        }
      },
    );

    // listen for success
    ref.listen(
      forgotPasswordControllerProvider.select((value) => value.isEmailSent),
      (_, next) {
        if (next != null && next) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text(context.localizations('auth.emailSuccess')),
                content: Text(
                  context.localizations('auth.emailCheckInstruction'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // close dialog
                      context.pop();
                      // clear controllers
                      _clearController();
                      // navigate to login
                      _navigateToLogin();
                    },
                    child: Text(context.localizations('auth.ok')),
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }

  // listen for success
}
