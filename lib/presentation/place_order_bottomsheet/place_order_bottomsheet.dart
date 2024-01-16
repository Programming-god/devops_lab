import 'notifier/place_order_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PlaceOrderBottomsheet extends ConsumerStatefulWidget {
  const PlaceOrderBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PlaceOrderBottomsheetState createState() => PlaceOrderBottomsheetState();
}

class PlaceOrderBottomsheetState extends ConsumerState<PlaceOrderBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildAddress(context),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1277.v),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedin,
                  height: 13.v,
                  width: 10.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text(
                    "msg_delivery_at_home".tr,
                    style: CustomTextStyles.bodySmallBlack90011_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgVector10,
                  height: 3.v,
                  width: 6.h,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            children: [
              Container(
                height: 11.adaptSize,
                width: 11.adaptSize,
                margin: EdgeInsets.only(bottom: 4.v),
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                decoration: AppDecoration.fillGreen.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
                  height: 7.v,
                  width: 6.h,
                  alignment: Alignment.topRight,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_delivery_in".tr,
                        style: CustomTextStyles.bodySmallBlack90011_2,
                      ),
                      TextSpan(
                        text: "lbl_42_mins".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
