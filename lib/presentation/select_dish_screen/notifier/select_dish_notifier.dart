import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/select_dish_screen/models/select_dish_model.dart';
part 'select_dish_state.dart';

final selectDishNotifier =
    StateNotifierProvider<SelectDishNotifier, SelectDishState>(
  (ref) => SelectDishNotifier(SelectDishState(
    selectDishModelObj: SelectDishModel(),
  )),
);

/// A notifier that manages the state of a SelectDish according to the event that is dispatched to it.
class SelectDishNotifier extends StateNotifier<SelectDishState> {
  SelectDishNotifier(SelectDishState state) : super(state) {}
}
