// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [framefiftynine_item_widget] screen.
class FramefiftynineItemModel extends Equatable {
  FramefiftynineItemModel({
    this.frameFiftyNine,
    this.isSelected,
  }) {
    frameFiftyNine = frameFiftyNine ?? "11:15";
    isSelected = isSelected ?? false;
  }

  String? frameFiftyNine;

  bool? isSelected;

  FramefiftynineItemModel copyWith({
    String? frameFiftyNine,
    bool? isSelected,
  }) {
    return FramefiftynineItemModel(
      frameFiftyNine: frameFiftyNine ?? this.frameFiftyNine,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [frameFiftyNine, isSelected];
}
