import '../../../core/app_export.dart';

/// This class is used in the [eathealthy_item_widget] screen.
class EathealthyItemModel {
  EathealthyItemModel({
    this.image,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.forOne,
    this.text5,
    this.text6,
    this.id,
  }) {
    image = image ?? ImageConstant.imgSamMoqadamOxp;
    text1 = text1 ?? "Eat Healthy";
    text2 = text2 ?? "Healthy food";
    text3 = text3 ?? "Zomato funds environmental projects to offset ";
    text4 = text4 ?? "offset delivery carbon footprint ";
    forOne = forOne ?? " 300 for one";
    text5 = text5 ?? "MAX SAFETY";
    text6 = text6 ?? "DELIVERY";
    id = id ?? "";
  }

  String? image;

  String? text1;

  String? text2;

  String? text3;

  String? text4;

  String? forOne;

  String? text5;

  String? text6;

  String? id;
}
