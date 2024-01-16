// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [framefiftynine2_item_widget] screen.
class Framefiftynine2ItemModel extends Equatable {
  Framefiftynine2ItemModel({
    this.frameFiftyNine,
    this.isSelected,
  }) {
    frameFiftyNine = frameFiftyNine ?? "11:15";
    isSelected = isSelected ?? false;
  }

  String? frameFiftyNine;

  bool? isSelected;

  Framefiftynine2ItemModel copyWith({
    String? frameFiftyNine,
    bool? isSelected,
  }) {
    return Framefiftynine2ItemModel(
      frameFiftyNine: frameFiftyNine ?? this.frameFiftyNine,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [frameFiftyNine, isSelected];
}
