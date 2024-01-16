// ignore_for_file: must_be_immutable

part of 'place_order_notifier.dart';

/// Represents the state of PlaceOrder in the application.
class PlaceOrderState extends Equatable {
  PlaceOrderState({this.placeOrderModelObj});

  PlaceOrderModel? placeOrderModelObj;

  @override
  List<Object?> get props => [
        placeOrderModelObj,
      ];

  PlaceOrderState copyWith({PlaceOrderModel? placeOrderModelObj}) {
    return PlaceOrderState(
      placeOrderModelObj: placeOrderModelObj ?? this.placeOrderModelObj,
    );
  }
}
