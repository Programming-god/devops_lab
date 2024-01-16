// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [view_cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewCartModel extends Equatable {
  ViewCartModel() {}

  ViewCartModel copyWith() {
    return ViewCartModel();
  }

  @override
  List<Object?> get props => [];
}
