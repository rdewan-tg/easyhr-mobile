part of common;

class MainAppDrawer extends ConsumerWidget with ConfirmDialogMixin {
  const MainAppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Drawer(
        width: MediaQuery.sizeOf(context).width / 1.4,
        shape: const RoundedRectangleBorder(),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 150,
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    context.localizations('appName'),
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            // profile menu
            Consumer(
              builder: (context, ref, child) {
                return ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: Text(context.localizations('drawer.myProfile')),
                  onTap: () {
                    Navigator.pop(context);
                    context.push('/$settingRoute/$profileRoute');
                  },
                );
              },
            ),

            // public holiday menu
            Consumer(
              builder: (context, ref, child) {
                return ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: Text(context.localizations('drawer.publicHoliday')),
                  onTap: () {
                    Navigator.pop(context);
                    context.push('/$publicHolidayRoute');
                  },
                );
              },
            ),

            // privacy policy menu
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined),
              title: Text(context.localizations('drawer.privacyPolicy')),
              onTap: () {
                Navigator.pop(context);
                context.push('/$settingRoute/$privacyPolicyRoute');
              },
            ),

            // sign-out menu
            Consumer(
              builder: (context, ref, child) {
                return Column(
                  children: [
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.logout_outlined),
                      title: Text(context.localizations('drawer.signOut')),
                      onTap: () => _logout(ref, context),
                    ),
                  ],
                );
              },
            ),

            const Divider(),
          ],
        ),
      ),
    );
  }

  void _logout(WidgetRef ref, BuildContext context) {
    Navigator.pop(context);
    showConfirmDialog(
      context: context,
      title: context.localizations('profile.signOutDialogTitle'),
      msg: context.localizations('profile.signOutDialogSubTitle'),
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: Icon(
        Icons.warning_outlined,
        color: context.themeColor.colorScheme.error,
      ),
      onYesTap: () {
        // delete customer account
        ref.read(profileControllerProvider.notifier).logout();
        // close dialog
        context.pop();
      },
      onNoTap: () {
        // close dialog
        context.pop();
      },
    );
  }
}
