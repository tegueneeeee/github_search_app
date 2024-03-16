import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_focus_node_provider.g.dart';

@riverpod
Raw<FocusNode> homeFocusNode(HomeFocusNodeRef ref) {
  return FocusNode();
}
