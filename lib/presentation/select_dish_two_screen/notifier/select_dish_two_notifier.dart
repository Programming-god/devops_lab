import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/select_dish_two_screen/models/select_dish_two_model.dart';
part 'select_dish_two_state.dart';

final selectDishTwoNotifier =
    StateNotifierProvider<SelectDishTwoNotifier, SelectDishTwoState>((ref) =>
        SelectDishTwoNotifier(
            SelectDishTwoState(selectDishTwoModelObj: SelectDishTwoModel())));

/// A notifier that manages the state of a SelectDishTwo according to the event that is dispatched to it.
class SelectDishTwoNotifier extends StateNotifier<SelectDishTwoState> {
  SelectDishTwoNotifier(SelectDishTwoState state) : super(state);
}
