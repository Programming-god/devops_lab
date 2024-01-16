import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/eat_healthy_page/models/eat_healthy_model.dart';
part 'eat_healthy_state.dart';

final eatHealthyNotifier =
    StateNotifierProvider<EatHealthyNotifier, EatHealthyState>((ref) =>
        EatHealthyNotifier(EatHealthyState(
            isSelectedSwitch: false,
            isSelectedSwitch1: false,
            eatHealthyModelObj: EatHealthyModel())));

/// A notifier that manages the state of a EatHealthy according to the event that is dispatched to it.
class EatHealthyNotifier extends StateNotifier<EatHealthyState> {
  EatHealthyNotifier(EatHealthyState state) : super(state);

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }

  void changeSwitchBox2(bool value) {
    state = state.copyWith(isSelectedSwitch1: value);
  }
}
