// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'five_item_model.dart';
import 'package:ovhay_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import 'framefiftynine2_item_model.dart';

/// This class defines the variables used in the [dineout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DineoutModel extends Equatable {
  DineoutModel({
    this.fiveItemList = const [],
    this.dropdownItemList = const [],
    this.framefiftynine2ItemList = const [],
  }) {}

  List<FiveItemModel> fiveItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<Framefiftynine2ItemModel> framefiftynine2ItemList;

  DineoutModel copyWith({
    List<FiveItemModel>? fiveItemList,
    List<SelectionPopupModel>? dropdownItemList,
    List<Framefiftynine2ItemModel>? framefiftynine2ItemList,
  }) {
    return DineoutModel(
      fiveItemList: fiveItemList ?? this.fiveItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      framefiftynine2ItemList:
          framefiftynine2ItemList ?? this.framefiftynine2ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [fiveItemList, dropdownItemList, framefiftynine2ItemList];
}
