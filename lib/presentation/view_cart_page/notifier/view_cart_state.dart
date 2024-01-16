// ignore_for_file: must_be_immutable

part of 'view_cart_notifier.dart';

/// Represents the state of ViewCart in the application.
class ViewCartState extends Equatable {
  ViewCartState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.viewCartModelObj,
  });

  ViewCartModel? viewCartModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        viewCartModelObj,
      ];

  ViewCartState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    ViewCartModel? viewCartModelObj,
  }) {
    return ViewCartState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      viewCartModelObj: viewCartModelObj ?? this.viewCartModelObj,
    );
  }
}
