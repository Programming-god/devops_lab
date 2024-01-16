import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/view_cart_page/models/view_cart_model.dart';
part 'view_cart_state.dart';

final viewCartNotifier = StateNotifierProvider<ViewCartNotifier, ViewCartState>(
    (ref) => ViewCartNotifier(ViewCartState(
        isSelectedSwitch: false,
        isSelectedSwitch1: false,
        viewCartModelObj: ViewCartModel())));

/// A notifier that manages the state of a ViewCart according to the event that is dispatched to it.
class ViewCartNotifier extends StateNotifier<ViewCartState> {
  ViewCartNotifier(ViewCartState state) : super(state);

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }

  void changeSwitchBox2(bool value) {
    state = state.copyWith(isSelectedSwitch1: value);
  }
}
