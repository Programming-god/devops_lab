import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/place_order_bottomsheet/models/place_order_model.dart';
part 'place_order_state.dart';

final placeOrderNotifier =
    StateNotifierProvider<PlaceOrderNotifier, PlaceOrderState>(
  (ref) => PlaceOrderNotifier(PlaceOrderState(
    placeOrderModelObj: PlaceOrderModel(),
  )),
);

/// A notifier that manages the state of a PlaceOrder according to the event that is dispatched to it.
class PlaceOrderNotifier extends StateNotifier<PlaceOrderState> {
  PlaceOrderNotifier(PlaceOrderState state) : super(state) {}
}
