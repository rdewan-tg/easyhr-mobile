part of profile;

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with ConfirmDialogMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(profileControllerProvider.notifier).getAllSettings();
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.profile')),
      elevation: 8,
      actions: [
        MenuAnchor(
          menuChildren: [
            MenuItemButton(
              onPressed: () => _logout(context),
              child: Text(context.localizations('profile.signout')),
            ),
            MenuItemButton(
              onPressed: () => _deleteMe(context),
              child: Text(context.localizations('profile.deleteMyAccount')),
            ),
          ],
          builder: (context, controller, child) {
            return IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
            );
          },
        ),
      ],
      widget: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          children: [
            Card(
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              shadowColor: context.themeColor.primaryColorLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kMedium),
              ),
              child: const Padding(
                padding: EdgeInsets.all(kSmall),
                child: ProfileDataWidget(),
              ),
            ),
            const SizedBox(height: kMedium),
            _buildZoneSwitchTile(),
          ],
        ),
      ),
    );
  }

  Widget _buildZoneSwitchTile() {
    final settings = ref.watch(
      profileControllerProvider.select((value) => value.settings),
    );
    return SwitchListTile.adaptive(
      title: Text(context.localizations('profile.userIsZoneEnabled')),
      value: settings['isZoneEnabled'] == 'true',
      onChanged: (value) {},
    );
  }

  void _listener() {
    ref.listen(profileControllerProvider.select((value) => value.isLoading), (
      _,
      next,
    ) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }

  void _logout(BuildContext context) {
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

  void _deleteMe(BuildContext context) {
    showConfirmDialog(
      context: context,
      title: context.localizations('profile.deleteDialogTitle'),
      msg: context.localizations('profile.deleteDialogSubTitle'),
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: Icon(
        Icons.warning_outlined,
        color: context.themeColor.colorScheme.error,
      ),
      onYesTap: () {
        // delete customer account
        ref.read(profileControllerProvider.notifier).deleteMyAccount();
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
