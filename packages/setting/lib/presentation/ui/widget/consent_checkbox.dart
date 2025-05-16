part of setting;

class ConsentCheckbox extends ConsumerWidget {
  const ConsentCheckbox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isConsentAccepted = ref.watch(
      settingControllerProvider.select((value) => value.isConsentAccepted),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Checkbox(
            value: isConsentAccepted,
            onChanged: (bool? value) {
              ref
                  .read(settingControllerProvider.notifier)
                  .setConsentStatementState(value ?? false);
            },
          ),
          Expanded(
            child: Text(
              context.localizations('setting.acceptConsentStatement'),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
