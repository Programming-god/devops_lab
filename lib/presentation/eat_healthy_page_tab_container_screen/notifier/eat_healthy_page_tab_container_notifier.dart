import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/eat_healthy_page_tab_container_screen/models/eat_healthy_page_tab_container_model.dart';
part 'eat_healthy_page_tab_container_state.dart';

final eatHealthyPageTabContainerNotifier = StateNotifierProvider<
        EatHealthyPageTabContainerNotifier, EatHealthyPageTabContainerState>(
    (ref) => EatHealthyPageTabContainerNotifier(EatHealthyPageTabContainerState(
        radioGroup: '',
        eatHealthyPageTabContainerModelObj: EatHealthyPageTabContainerModel(
            radioList: ["lbl_delivery2", "lbl_mode"]))));

/// A notifier that manages the state of a EatHealthyPageTabContainer according to the event that is dispatched to it.
class EatHealthyPageTabContainerNotifier
    extends StateNotifier<EatHealthyPageTabContainerState> {
  EatHealthyPageTabContainerNotifier(EatHealthyPageTabContainerState state)
      : super(state);

  void changeRadioButton1(String value) {
    state = state.copyWith(radioGroup: value);
  }
}
