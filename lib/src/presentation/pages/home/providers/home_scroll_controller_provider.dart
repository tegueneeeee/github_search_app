import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_scroll_controller_provider.g.dart';

@riverpod
Raw<ScrollController> homeScrollController(HomeScrollControllerRef ref) {
  return ScrollController();
}
