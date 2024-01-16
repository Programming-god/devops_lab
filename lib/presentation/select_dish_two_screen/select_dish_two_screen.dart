import 'notifier/select_dish_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_icon_button.dart';
import 'package:ovhay_s_application1/widgets/custom_outlined_button.dart';
import 'package:ovhay_s_application1/widgets/custom_rating_bar.dart';
import 'package:readmore/readmore.dart';

class SelectDishTwoScreen extends ConsumerStatefulWidget {
  const SelectDishTwoScreen({Key? key}) : super(key: key);

  @override
  SelectDishTwoScreenState createState() => SelectDishTwoScreenState();
}

class SelectDishTwoScreenState extends ConsumerState<SelectDishTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  _buildBACKICON(context),
                  Align(
                      alignment: Alignment.center,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: appTheme.black900.withOpacity(0.71),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Container(
                              height: SizeUtils.height,
                              width: double.maxFinite,
                              decoration: AppDecoration.fillBlack9001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 94.h, vertical: 9.v),
                                        decoration: AppDecoration.fillOnPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderBL15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 481.v),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoneMenuGray600,
                                                  height: 27.v,
                                                  width: 223.h)
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomIconButton(
                                              height: 33.adaptSize,
                                              width: 33.adaptSize,
                                              padding: EdgeInsets.all(11.h),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCloseOnprimary)),
                                          SizedBox(height: 13.v),
                                          _buildMonikaGrabkows(context),
                                          SizedBox(height: 11.v),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h),
                                                  child: Text("lbl_add_on".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumBlack900))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h),
                                                  child: Text(
                                                      "msg_you_can_choose_up"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodySmall11))),
                                          SizedBox(height: 17.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, right: 19.h),
                                              child: _buildVegIcon(context,
                                                  paneer: "lbl_pesto_paneer".tr,
                                                  price: "lbl_402".tr)),
                                          SizedBox(height: 20.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, right: 19.h),
                                              child: _buildVegIcon(context,
                                                  paneer: "lbl_paneer".tr,
                                                  price: "lbl_402".tr)),
                                          SizedBox(height: 20.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, right: 19.h),
                                              child: _buildVegIcon(context,
                                                  paneer:
                                                      "lbl_extra_veggies".tr,
                                                  price: "lbl_402".tr)),
                                          SizedBox(height: 19.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, right: 19.h),
                                              child: _buildVegIcon(context,
                                                  paneer: "lbl_mushroom".tr,
                                                  price: "lbl_402".tr,
                                                  onTapVegIcon: () {
                                                onTapVegIcon(context);
                                              })),
                                          SizedBox(height: 20.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, right: 19.h),
                                              child: _buildVegIcon(context,
                                                  paneer: "lbl_corn".tr,
                                                  price: "lbl_402".tr)),
                                          SizedBox(height: 20.v),
                                          _buildVegIcon6(context),
                                          SizedBox(height: 4.v),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 7.h),
                                                  child: Text(
                                                      "msg_choose_your_protien"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumBlack900))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h),
                                                  child: Text(
                                                      "msg_you_can_choose_up2"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodySmall11))),
                                          SizedBox(height: 7.v),
                                          _buildVegIcon7(context),
                                          SizedBox(height: 8.v),
                                          _buildAdd199(context)
                                        ]))
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildBACKICON(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, top: 55.v, bottom: 731.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 10.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVector10,
                                height: 12.v,
                                width: 5.h),
                            SizedBox(height: 25.v),
                            Text("lbl_eat_healthy".tr,
                                style: theme.textTheme.headlineMedium),
                            Text("msg_healthy_food_south".tr,
                                style: CustomTextStyles.bodySmallGray800),
                            SizedBox(height: 2.v),
                            Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text("msg_kukatpally_hyderabad".tr,
                                    style: CustomTextStyles.bodySmallGray60001))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 20.v),
                      child: Column(children: [
                        Container(
                            width: 72.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 6.v),
                            decoration: AppDecoration.fillGreen.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Text("lbl_4_2".tr,
                                        style: CustomTextStyles
                                            .bodySmallOnPrimary12),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSignal,
                                        height: 11.adaptSize,
                                        width: 11.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 6.h, top: 2.v, bottom: 1.v))
                                  ]),
                                  SizedBox(height: 2.v),
                                  Text("lbl_delivery".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimary8_1)
                                ])),
                        SizedBox(height: 5.v),
                        SizedBox(
                            height: 42.v,
                            width: 72.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgBrookeLarkHln,
                                  height: 41.v,
                                  width: 72.h,
                                  radius: BorderRadius.circular(4.h),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 11.h, vertical: 4.v),
                                      decoration: AppDecoration.fillBlack900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_6".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary12),
                                            SizedBox(height: 5.v),
                                            Text("lbl_photos".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary8_1)
                                          ])))
                            ]))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildMonikaGrabkows(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMonikaGrabkows256x414,
          height: 256.v,
          width: 414.h,
          radius: BorderRadius.circular(19.h)),
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text("msg_plant_protien_bowl".tr,
              style: theme.textTheme.bodyLarge)),
      SizedBox(height: 5.v),
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: CustomRatingBar(
                    initialRating: 0, itemSize: 16, itemCount: 2)),
            Container(
                width: 49.h,
                margin: EdgeInsets.only(left: 16.h),
                padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 2.v),
                decoration: AppDecoration.outlineDeepOrangeA
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                child: Text("lbl_bestseller".tr,
                    style: CustomTextStyles.bodySmallDeeporangeA70001))
          ])),
      SizedBox(height: 11.v),
      Container(
          width: 203.h,
          margin: EdgeInsets.only(left: 9.h),
          child: ReadMoreText("msg_veg_preparation".tr,
              trimLines: 2,
              colorClickableText: appTheme.gray800,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle: CustomTextStyles.bodySmall11.copyWith(height: 1.23),
              lessStyle: CustomTextStyles.bodySmall11.copyWith(height: 1.23))),
      SizedBox(height: 12.v),
      Divider(color: appTheme.gray300)
    ]);
  }

  /// Section Widget
  Widget _buildVegIcon6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 74.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVegIcon,
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text("lbl_chilli_paneer".tr,
                        style: theme.textTheme.bodySmall))
              ])),
          Spacer(),
          Text("lbl_402".tr, style: theme.textTheme.bodySmall),
          CustomImageView(
              imagePath: ImageConstant.imgVegIconGray60001,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 7.h))
        ]));
  }

  /// Section Widget
  Widget _buildVegIcon7(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 73.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVegIcon,
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text("lbl_bbq_protien".tr,
                        style: theme.textTheme.bodySmall))
              ])),
          Spacer(),
          Text("lbl_402".tr, style: theme.textTheme.bodySmall),
          CustomImageView(
              imagePath: ImageConstant.imgVegIconGray60001,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 7.h))
        ]));
  }

  /// Section Widget
  Widget _buildAdd199(BuildContext context) {
    return SizedBox(
        height: 40.v,
        width: 394.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20.h, 12.v, 29.h, 12.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_chilli_paneer".tr,
                            style: theme.textTheme.bodySmall),
                        Text("lbl_402".tr, style: theme.textTheme.bodySmall)
                      ]))),
          Opacity(
              opacity: 0.99,
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 87.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.h, vertical: 1.v),
                            decoration: AppDecoration.outlineRedA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text("lbl3".tr,
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                      child: Text("lbl_1".tr,
                                          style: theme.textTheme.titleLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 5.v, right: 1.h, bottom: 4.v),
                                      child: Text("lbl2".tr,
                                          style: CustomTextStyles
                                              .bodyLargeRedA700))
                                ])),
                        Expanded(
                            child: CustomOutlinedButton(
                                height: 40.v,
                                text: "lbl_add_199".tr,
                                margin: EdgeInsets.only(left: 17.h),
                                buttonStyle: CustomButtonStyles.outlinePrimary,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeOnPrimary))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildVegIcon(
    BuildContext context, {
    required String paneer,
    required String price,
    Function? onTapVegIcon,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgVegIcon,
          height: 14.adaptSize,
          width: 14.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(paneer,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray600))),
      Spacer(),
      Text(price,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.gray600)),
      CustomImageView(
          imagePath: ImageConstant.imgVegIconGray60001,
          height: 14.adaptSize,
          width: 14.adaptSize,
          margin: EdgeInsets.only(left: 7.h),
          onTap: () {
            onTapVegIcon!.call();
          })
    ]);
  }

  /// Navigates to the checkListScreen when the action is triggered.
  onTapVegIcon(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkListScreen,
    );
  }
}
