import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/thank_you_screen/models/thank_you_model.dart';
part 'thank_you_state.dart';

final thankYouNotifier = StateNotifierProvider<ThankYouNotifier, ThankYouState>(
    (ref) =>
        ThankYouNotifier(ThankYouState(thankYouModelObj: ThankYouModel())));

/// A notifier that manages the state of a ThankYou according to the event that is dispatched to it.
class ThankYouNotifier extends StateNotifier<ThankYouState> {
  ThankYouNotifier(ThankYouState state) : super(state);
}
