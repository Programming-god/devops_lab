import '../models/offercomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class OffercomponentItemWidget extends StatelessWidget {
  OffercomponentItemWidget(
    this.offercomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OffercomponentItemModel offercomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.v),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.gradientRedADToOrangeB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 180.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.v),
            child: Column(
              children: [
                SizedBox(
                  height: 44.v,
                  width: 86.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            offercomponentItemModelObj.uptoTextProp!,
                            style: CustomTextStyles.bodyLargeOnPrimary17,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          offercomponentItemModelObj.discountTextProp!,
                          style: CustomTextStyles.titleLargeOnPrimaryBold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  offercomponentItemModelObj.noCookingTextProp!,
                  style: CustomTextStyles.bodySmallSeymourOneOnPrimary,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        offercomponentItemModelObj.julyTextProp!,
                        style: CustomTextStyles.bodyMediumSigmarOneOnPrimary,
                      ),
                      Container(
                        height: 7.adaptSize,
                        width: 7.adaptSize,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          top: 8.v,
                          bottom: 6.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: CustomImageView(
                          imagePath: offercomponentItemModelObj?.imageProp,
                          height: 2.v,
                          width: 4.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: offercomponentItemModelObj?.thumbsUpImageProp,
            height: 64.v,
            width: 66.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 39.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}
