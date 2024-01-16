// ignore_for_file: must_be_immutable

part of 'eat_healthy_page_tab_container_notifier.dart';

/// Represents the state of EatHealthyPageTabContainer in the application.
class EatHealthyPageTabContainerState extends Equatable {
  EatHealthyPageTabContainerState({
    this.radioGroup = "",
    this.eatHealthyPageTabContainerModelObj,
  });

  EatHealthyPageTabContainerModel? eatHealthyPageTabContainerModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        eatHealthyPageTabContainerModelObj,
      ];

  EatHealthyPageTabContainerState copyWith({
    String? radioGroup,
    EatHealthyPageTabContainerModel? eatHealthyPageTabContainerModelObj,
  }) {
    return EatHealthyPageTabContainerState(
      radioGroup: radioGroup ?? this.radioGroup,
      eatHealthyPageTabContainerModelObj: eatHealthyPageTabContainerModelObj ??
          this.eatHealthyPageTabContainerModelObj,
    );
  }
}
