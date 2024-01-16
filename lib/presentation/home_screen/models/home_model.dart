// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'offercomponent_item_model.dart';
import 'dynamictext_item_model.dart';
import 'eathealthy_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.offercomponentItemList = const [],
    this.dynamictextItemList = const [],
    this.eathealthyItemList = const [],
  }) {}

  List<OffercomponentItemModel> offercomponentItemList;

  List<DynamictextItemModel> dynamictextItemList;

  List<EathealthyItemModel> eathealthyItemList;

  HomeModel copyWith({
    List<OffercomponentItemModel>? offercomponentItemList,
    List<DynamictextItemModel>? dynamictextItemList,
    List<EathealthyItemModel>? eathealthyItemList,
  }) {
    return HomeModel(
      offercomponentItemList:
          offercomponentItemList ?? this.offercomponentItemList,
      dynamictextItemList: dynamictextItemList ?? this.dynamictextItemList,
      eathealthyItemList: eathealthyItemList ?? this.eathealthyItemList,
    );
  }

  @override
  List<Object?> get props =>
      [offercomponentItemList, dynamictextItemList, eathealthyItemList];
}
