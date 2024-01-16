// ignore_for_file: must_be_immutable

part of 'select_dish_two_notifier.dart';

/// Represents the state of SelectDishTwo in the application.
class SelectDishTwoState extends Equatable {
  SelectDishTwoState({this.selectDishTwoModelObj});

  SelectDishTwoModel? selectDishTwoModelObj;

  @override
  List<Object?> get props => [
        selectDishTwoModelObj,
      ];

  SelectDishTwoState copyWith({SelectDishTwoModel? selectDishTwoModelObj}) {
    return SelectDishTwoState(
      selectDishTwoModelObj:
          selectDishTwoModelObj ?? this.selectDishTwoModelObj,
    );
  }
}
