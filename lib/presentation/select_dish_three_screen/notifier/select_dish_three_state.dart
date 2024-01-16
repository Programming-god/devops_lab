// ignore_for_file: must_be_immutable

part of 'select_dish_three_notifier.dart';

/// Represents the state of SelectDishThree in the application.
class SelectDishThreeState extends Equatable {
  SelectDishThreeState({this.selectDishThreeModelObj});

  SelectDishThreeModel? selectDishThreeModelObj;

  @override
  List<Object?> get props => [
        selectDishThreeModelObj,
      ];

  SelectDishThreeState copyWith(
      {SelectDishThreeModel? selectDishThreeModelObj}) {
    return SelectDishThreeState(
      selectDishThreeModelObj:
          selectDishThreeModelObj ?? this.selectDishThreeModelObj,
    );
  }
}
