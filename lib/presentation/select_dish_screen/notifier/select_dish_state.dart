// ignore_for_file: must_be_immutable

part of 'select_dish_notifier.dart';

/// Represents the state of SelectDish in the application.
class SelectDishState extends Equatable {
  SelectDishState({this.selectDishModelObj});

  SelectDishModel? selectDishModelObj;

  @override
  List<Object?> get props => [
        selectDishModelObj,
      ];

  SelectDishState copyWith({SelectDishModel? selectDishModelObj}) {
    return SelectDishState(
      selectDishModelObj: selectDishModelObj ?? this.selectDishModelObj,
    );
  }
}
