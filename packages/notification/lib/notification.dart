library notification;

import 'package:core/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notification/presentation/controller/notification_controller.dart';
import 'package:notification/domain/model/notification.dart' as model;
import 'package:loader_overlay/loader_overlay.dart';
import 'package:common/common.dart';
import 'package:go_router/go_router.dart';
import 'package:visibility_detector/visibility_detector.dart';

part 'presentation/ui/notification_screen.dart';
part 'presentation/ui/widget/notification_list.dart';
part 'presentation/ui/notification_detail_screen.dart';
