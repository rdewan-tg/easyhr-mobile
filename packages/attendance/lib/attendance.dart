import 'dart:async';
import 'dart:io';

import 'package:attendance/features/attendance/presentation/controller/attendance_controller.dart';
import 'package:attendance/features/camera/presentation/controller/capture_image_controller.dart';
import 'package:attendance/features/map/presentation/controller/map_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geocoding/geocoding.dart';
import 'package:common/common.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:timezone/data/latest.dart' as tz_latest;
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

part 'features/map/presentation/ui/map_screen.dart';
part 'features/camera/presentation/ui/capture_image_screen.dart';
part 'features/map/presentation/ui/widget/bottom_sheet_widget.dart';
part 'features/map/presentation/ui/widget/current_address_widget.dart';
part 'features/map/presentation/ui/widget/capture_image_button_widget.dart';
part 'features/map/presentation/ui/widget/capture_image_button_no_zone_widget.dart';
part 'features/map/presentation/ui/widget/captured_image_widget.dart';
part 'features/map/presentation/ui/widget/zone_widget.dart';
part 'features/attendance/presentation/ui/attendance_screen.dart';
part 'features/attendance/presentation/ui/widget/attendance_list.dart';
part 'features/map/presentation/ui/widget/current_location_widget.dart';
part 'features/map/presentation/ui/widget/add_attendance_with_no_image.dart';
part 'features/map/presentation/ui/widget/add_attendance_with_zone_and_no_image.dart';
