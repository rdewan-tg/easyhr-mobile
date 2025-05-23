library setting;

import 'package:common/common.dart';
import 'package:common/i18n/i18n.dart';
import 'package:core/notification/local/local_push_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:setting/presentation/controller/setting_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:timezone/timezone.dart' as tz;

part 'presentation/ui/setting_screen.dart';
part 'presentation/ui/theme_picker_screen.dart';
part 'presentation/ui/language_picker_screen.dart';
part 'presentation/ui/company_setting_screen.dart';
part 'presentation/ui/privacy_policy_screen.dart';
part 'presentation/ui/widget/consent_checkbox.dart';
part 'presentation/ui/schedule_notification_screen.dart';
part 'presentation/ui/notification_schedule_screen.dart';
part 'presentation/ui/widget/notification_schedules.dart';
