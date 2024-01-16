import 'notifier/check_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_icon_button.dart';
import 'package:ovhay_s_application1/widgets/custom_outlined_button.dart';
import 'package:ovhay_s_application1/widgets/custom_rating_bar.dart';
import 'package:readmore/readmore.dart';

class CheckListScreen extends ConsumerStatefulWidget {
  const CheckListScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CheckListScreenState createState() => CheckListScreenState();
}

class CheckListScreenState extends ConsumerState<CheckListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 91.v,
                      ),
                      child: Text(
                        "lbl_eat_healthy".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector10,
                    height: 12.v,
                    width: 5.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      top: 54.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 74.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "lbl_4_2".tr,
                                style: CustomTextStyles.bodySmallOnPrimary12,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 11.adaptSize,
                                width: 11.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 6.h,
                                  top: 2.v,
                                  bottom: 1.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "lbl_delivery".tr,
                            style: CustomTextStyles.bodySmallOnPrimary8_1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fillBlack9001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 370.v),
                          Container(
                            height: 526.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(15.h),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 95.h,
                        vertical: 33.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.customBorderBL15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 433.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgPhoneMenuGray600,
                            height: 27.v,
                            width: 223.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildAddOn(context),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 29.h,
                        bottom: 64.v,
                      ),
                      child: Text(
                        "lbl_chilli_paneer".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(9.h, 805.v, 318.h, 51.v),
                    child: _buildOne(
                      context,
                      text: "lbl3".tr,
                      one: "lbl_1".tr,
                      text1: "lbl2".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(11.h, 805.v, 316.h, 51.v),
                    child: _buildOne(
                      context,
                      text: "lbl3".tr,
                      one: "lbl_1".tr,
                      text1: "lbl2".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 82.v),
                    child: CustomIconButton(
                      height: 33.adaptSize,
                      width: 33.adaptSize,
                      padding: EdgeInsets.all(11.h),
                      alignment: Alignment.topCenter,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseOnprimary,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 40.v,
                      width: 292.h,
                      margin: EdgeInsets.only(
                        right: 9.h,
                        bottom: 51.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 31.h),
                              child: Text(
                                "lbl_402".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(right: 2.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 99.h,
                                vertical: 5.v,
                              ),
                              decoration: AppDecoration.outlineRedA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_add_279".tr,
                                    style: CustomTextStyles.titleLargeOnPrimary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomOutlinedButton(
                            height: 40.v,
                            width: 290.h,
                            text: "lbl_add_199".tr,
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeOnPrimary,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildBrookeLarkHlN(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddOn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 7.h,
          right: 19.h,
          bottom: 99.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "lbl_add_on".tr,
                style: CustomTextStyles.bodyMediumBlack900,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_you_can_choose_up".tr,
                  style: CustomTextStyles.bodySmall11,
                ),
              ),
            ),
            SizedBox(height: 17.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildVegIcon(
                context,
                paneer: "lbl_pesto_paneer".tr,
                price: "lbl_402".tr,
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildVegIcon(
                context,
                paneer: "lbl_paneer".tr,
                price: "lbl_402".tr,
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildVegIcon(
                context,
                paneer: "lbl_extra_veggies".tr,
                price: "lbl_402".tr,
              ),
            ),
            SizedBox(height: 19.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVegIcon,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_mushroom".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "lbl_402".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  Container(
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVegIconPrimary,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 8.v,
                          width: 11.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildVegIcon(
                context,
                paneer: "lbl_corn".tr,
                price: "lbl_402".tr,
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildVegIcon(
                context,
                paneer: "lbl_chilli_paneer".tr,
                price: "lbl_402".tr,
              ),
            ),
            SizedBox(height: 4.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "msg_choose_your_protien".tr,
                style: CustomTextStyles.bodyMediumBlack900,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_you_can_choose_up2".tr,
                  style: CustomTextStyles.bodySmall11,
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildVegIcon(
                context,
                paneer: "lbl_bbq_protien".tr,
                price: "lbl_402".tr,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBrookeLarkHlN(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 122.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 262.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 42.v,
                      width: 72.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBrookeLarkHln,
                            height: 41.v,
                            width: 72.h,
                            radius: BorderRadius.circular(
                              4.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 4.v,
                              ),
                              decoration: AppDecoration.fillBlack900.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_6".tr,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary12,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "lbl_photos".tr,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary8_1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "msg_healthy_food_south".tr,
                        style: CustomTextStyles.bodySmallGray800,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMonikaGrabkows256x414,
                    height: 256.v,
                    width: 414.h,
                    radius: BorderRadius.circular(
                      19.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 17.v,
                      ),
                      child: Text(
                        "msg_kukatpally_hyderabad".tr,
                        style: CustomTextStyles.bodySmallGray60001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "msg_plant_protien_bowl".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: CustomRatingBar(
                      initialRating: 0,
                      itemSize: 16,
                      itemCount: 2,
                    ),
                  ),
                  Container(
                    width: 49.h,
                    margin: EdgeInsets.only(left: 16.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.outlineDeepOrangeA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "lbl_bestseller".tr,
                      style: CustomTextStyles.bodySmallDeeporangeA70001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Container(
              width: 203.h,
              margin: EdgeInsets.only(left: 9.h),
              child: ReadMoreText(
                "msg_veg_preparation".tr,
                trimLines: 2,
                colorClickableText: appTheme.gray800,
                trimMode: TrimMode.Line,
                trimCollapsedText: "lbl_read_more".tr,
                moreStyle: CustomTextStyles.bodySmall11.copyWith(
                  height: 1.23,
                ),
                lessStyle: CustomTextStyles.bodySmall11.copyWith(
                  height: 1.23,
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Divider(
              color: appTheme.gray300,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildVegIcon(
    BuildContext context, {
    required String paneer,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVegIcon,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            paneer,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Spacer(),
        Text(
          price,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVegIconGray60001,
          height: 14.adaptSize,
          width: 14.adaptSize,
          margin: EdgeInsets.only(left: 7.h),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildOne(
    BuildContext context, {
    required String text,
    required String one,
    required String text1,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineRedA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              text,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: appTheme.redA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Text(
              one,
              style: theme.textTheme.titleLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              text1,
              style: CustomTextStyles.bodyLargeRedA700.copyWith(
                color: appTheme.redA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
