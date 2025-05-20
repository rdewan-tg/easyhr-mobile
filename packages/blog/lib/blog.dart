library blog;

import 'package:blog/domain/model/blog_model.dart';
import 'package:blog/presentation/controller/blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:common/common.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_html/flutter_html.dart';

part 'presentation/ui/blog_screen.dart';
part 'presentation/ui/widget/blog_list.dart';
part 'presentation/ui/blog_detail_screen.dart';
part 'presentation/ui/widget/blog_detail.dart';
