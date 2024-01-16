// ignore_for_file: must_be_immutable

part of 'eat_healthy_notifier.dart';

/// Represents the state of EatHealthy in the application.
class EatHealthyState extends Equatable {
  EatHealthyState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.eatHealthyModelObj,
  });

  EatHealthyModel? eatHealthyModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        eatHealthyModelObj,
      ];

  EatHealthyState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    EatHealthyModel? eatHealthyModelObj,
  }) {
    return EatHealthyState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      eatHealthyModelObj: eatHealthyModelObj ?? this.eatHealthyModelObj,
    );
  }
}
