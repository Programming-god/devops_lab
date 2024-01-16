// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:ovhay_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import 'framefiftynine_item_model.dart';

/// This class defines the variables used in the [select_dish_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectDishOneModel extends Equatable {
  SelectDishOneModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
    this.dropdownItemList2 = const [],
    this.framefiftynineItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<SelectionPopupModel> dropdownItemList2;

  List<FramefiftynineItemModel> framefiftynineItemList;

  SelectDishOneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
    List<FramefiftynineItemModel>? framefiftynineItemList,
  }) {
    return SelectDishOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
      framefiftynineItemList:
          framefiftynineItemList ?? this.framefiftynineItemList,
    );
  }

  @override
  List<Object?> get props => [
        dropdownItemList,
        dropdownItemList1,
        dropdownItemList2,
        framefiftynineItemList
      ];
}
