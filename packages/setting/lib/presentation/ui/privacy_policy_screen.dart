part of setting;

class PrivacyPolicyScreen extends ConsumerStatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  ConsumerState<PrivacyPolicyScreen> createState() =>
      _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends ConsumerState<PrivacyPolicyScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(settingControllerProvider.notifier).getConsentStatement();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.privacyPolicy')),
      widget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              context.localizations('setting.privacyPolicyMessage'),
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
          ),
          const ConsentCheckbox(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
