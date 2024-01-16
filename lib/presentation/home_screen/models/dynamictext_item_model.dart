import '../../../core/app_export.dart';

/// This class is used in the [dynamictext_item_widget] screen.
class DynamictextItemModel {
  DynamictextItemModel({
    this.dynamicImage,
    this.dynamicText,
    this.id,
  }) {
    dynamicImage = dynamicImage ?? ImageConstant.imgAtikahAkhtarD;
    dynamicText = dynamicText ?? "Biryani";
    id = id ?? "";
  }

  String? dynamicImage;

  String? dynamicText;

  String? id;
}
