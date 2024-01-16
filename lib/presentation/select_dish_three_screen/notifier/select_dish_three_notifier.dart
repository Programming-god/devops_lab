import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/select_dish_three_screen/models/select_dish_three_model.dart';
part 'select_dish_three_state.dart';

final selectDishThreeNotifier =
    StateNotifierProvider<SelectDishThreeNotifier, SelectDishThreeState>(
  (ref) => SelectDishThreeNotifier(SelectDishThreeState(
    selectDishThreeModelObj: SelectDishThreeModel(),
  )),
);

/// A notifier that manages the state of a SelectDishThree according to the event that is dispatched to it.
class SelectDishThreeNotifier extends StateNotifier<SelectDishThreeState> {
  SelectDishThreeNotifier(SelectDishThreeState state) : super(state) {}
}
