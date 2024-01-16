import '../../../core/app_export.dart';

/// This class is used in the [offercomponent_item_widget] screen.
class OffercomponentItemModel {
  OffercomponentItemModel({
    this.uptoTextProp,
    this.discountTextProp,
    this.noCookingTextProp,
    this.julyTextProp,
    this.imageProp,
    this.thumbsUpImageProp,
    this.id,
  }) {
    uptoTextProp = uptoTextProp ?? "UP TO ";
    discountTextProp = discountTextProp ?? "60% OFF";
    noCookingTextProp = noCookingTextProp ?? "no cooking";
    julyTextProp = julyTextProp ?? "July";
    imageProp = imageProp ?? ImageConstant.imgGroup54;
    thumbsUpImageProp = thumbsUpImageProp ?? ImageConstant.imgThumbsUp;
    id = id ?? "";
  }

  String? uptoTextProp;

  String? discountTextProp;

  String? noCookingTextProp;

  String? julyTextProp;

  String? imageProp;

  String? thumbsUpImageProp;

  String? id;
}
