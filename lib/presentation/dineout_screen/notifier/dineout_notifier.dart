import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/five_item_model.dart';
import '../models/framefiftynine2_item_model.dart';
import 'package:ovhay_s_application1/presentation/dineout_screen/models/dineout_model.dart';
part 'dineout_state.dart';

final dineoutNotifier = StateNotifierProvider<DineoutNotifier, DineoutState>(
    (ref) => DineoutNotifier(DineoutState(
        selectedDropDownValue: SelectionPopupModel(title: ''),
        sliderIndex: 0,
        dineoutModelObj: DineoutModel(
            fiveItemList: List.generate(1, (index) => FiveItemModel()),
            dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ],
            framefiftynine2ItemList:
                List.generate(8, (index) => Framefiftynine2ItemModel())))));

/// A notifier that manages the state of a Dineout according to the event that is dispatched to it.
class DineoutNotifier extends StateNotifier<DineoutState> {
  DineoutNotifier(DineoutState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Framefiftynine2ItemModel> newList =
        List<Framefiftynine2ItemModel>.from(
            state.dineoutModelObj!.framefiftynine2ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        dineoutModelObj:
            state.dineoutModelObj?.copyWith(framefiftynine2ItemList: newList));
  }
}
