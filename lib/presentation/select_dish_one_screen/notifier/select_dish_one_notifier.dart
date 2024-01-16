import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framefiftynine_item_model.dart';
import 'package:ovhay_s_application1/presentation/select_dish_one_screen/models/select_dish_one_model.dart';
part 'select_dish_one_state.dart';

final selectDishOneNotifier = StateNotifierProvider<
        SelectDishOneNotifier, SelectDishOneState>(
    (ref) => SelectDishOneNotifier(SelectDishOneState(
        selectedDropDownValue: SelectionPopupModel(title: ''),
        selectedDropDownValue1: SelectionPopupModel(title: ''),
        selectedDropDownValue2: SelectionPopupModel(title: ''),
        selectDishOneModelObj: SelectDishOneModel(
            dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ],
            dropdownItemList1: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ],
            dropdownItemList2: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ],
            framefiftynineItemList:
                List.generate(8, (index) => FramefiftynineItemModel())))));

/// A notifier that manages the state of a SelectDishOne according to the event that is dispatched to it.
class SelectDishOneNotifier extends StateNotifier<SelectDishOneState> {
  SelectDishOneNotifier(SelectDishOneState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FramefiftynineItemModel> newList = List<FramefiftynineItemModel>.from(
        state.selectDishOneModelObj!.framefiftynineItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        selectDishOneModelObj: state.selectDishOneModelObj
            ?.copyWith(framefiftynineItemList: newList));
  }
}
