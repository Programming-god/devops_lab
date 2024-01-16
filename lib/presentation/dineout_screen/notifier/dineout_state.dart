// ignore_for_file: must_be_immutable

part of 'dineout_notifier.dart';

/// Represents the state of Dineout in the application.
class DineoutState extends Equatable {
  DineoutState({
    this.selectedDropDownValue,
    this.sliderIndex = 0,
    this.dineoutModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  DineoutModel? dineoutModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        sliderIndex,
        dineoutModelObj,
      ];

  DineoutState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    int? sliderIndex,
    DineoutModel? dineoutModelObj,
  }) {
    return DineoutState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      dineoutModelObj: dineoutModelObj ?? this.dineoutModelObj,
    );
  }
}
