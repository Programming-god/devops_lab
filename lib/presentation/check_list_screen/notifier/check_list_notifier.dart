import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/check_list_screen/models/check_list_model.dart';
part 'check_list_state.dart';

final checkListNotifier =
    StateNotifierProvider<CheckListNotifier, CheckListState>(
  (ref) => CheckListNotifier(CheckListState(
    checkListModelObj: CheckListModel(),
  )),
);

/// A notifier that manages the state of a CheckList according to the event that is dispatched to it.
class CheckListNotifier extends StateNotifier<CheckListState> {
  CheckListNotifier(CheckListState state) : super(state) {}
}
