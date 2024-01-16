// ignore_for_file: must_be_immutable

part of 'select_dish_one_notifier.dart';

/// Represents the state of SelectDishOne in the application.
class SelectDishOneState extends Equatable {
  SelectDishOneState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectDishOneModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectDishOneModel? selectDishOneModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectDishOneModelObj,
      ];

  SelectDishOneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectDishOneModel? selectDishOneModelObj,
  }) {
    return SelectDishOneState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectDishOneModelObj:
          selectDishOneModelObj ?? this.selectDishOneModelObj,
    );
  }
}
