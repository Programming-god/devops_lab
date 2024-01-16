import 'notifier/view_cart_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_elevated_button.dart';
import 'package:ovhay_s_application1/widgets/custom_outlined_button.dart';
import 'package:ovhay_s_application1/widgets/custom_rating_bar.dart';
import 'package:ovhay_s_application1/widgets/custom_switch.dart';
import 'package:readmore/readmore.dart';
import 'package:ovhay_s_application1/presentation/place_order_bottomsheet/place_order_bottomsheet.dart';

class ViewCartPage extends ConsumerStatefulWidget {
  const ViewCartPage({Key? key}) : super(key: key);

  @override
  ViewCartPageState createState() => ViewCartPageState();
}

class ViewCartPageState extends ConsumerState<ViewCartPage>
    with AutomaticKeepAliveClientMixin<ViewCartPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 17.v),
                  Column(children: [
                    _buildSearch(context),
                    SizedBox(height: 16.v),
                    Divider(color: appTheme.gray300),
                    SizedBox(height: 22.v),
                    _buildRecommended(context),
                    SizedBox(height: 31.v),
                    _buildFortyThree(context),
                    SizedBox(height: 28.v),
                    _buildMenu(context),
                    SizedBox(height: 15.v),
                    _buildViewCart(context),
                    SizedBox(height: 24.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgPhoneMenuGray600,
                        height: 27.v,
                        width: 223.h)
                  ])
                ])))));
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer(builder: (context, ref, _) {
                return CustomSwitch(
                    margin: EdgeInsets.only(top: 7.v, bottom: 11.v),
                    value: ref.watch(viewCartNotifier).isSelectedSwitch,
                    onChange: (value) {
                      ref
                          .read(viewCartNotifier.notifier)
                          .changeSwitchBox1(value);
                    });
              }),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 11.v, bottom: 14.v),
                  child: Text("lbl_veg".tr,
                      style: CustomTextStyles.bodySmallGray8008)),
              Spacer(flex: 30),
              Consumer(builder: (context, ref, _) {
                return CustomSwitch(
                    margin: EdgeInsets.only(top: 7.v, bottom: 11.v),
                    value: ref.watch(viewCartNotifier).isSelectedSwitch1,
                    onChange: (value) {
                      ref
                          .read(viewCartNotifier.notifier)
                          .changeSwitchBox2(value);
                    });
              }),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 11.v, bottom: 14.v),
                  child: Text("lbl_egg".tr,
                      style: CustomTextStyles.bodySmallGray8008)),
              Spacer(flex: 69),
              CustomOutlinedButton(
                  height: 37.v,
                  width: 127.h,
                  text: "lbl_search".tr,
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 14.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgSearchIconRedA700,
                          height: 14.v,
                          width: 16.h)),
                  buttonStyle: CustomButtonStyles.outlineGrayTL8,
                  buttonTextStyle: CustomTextStyles.bodyLargeSignikaGray400)
            ]));
  }

  /// Section Widget
  Widget _buildRecommended(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_recommended".tr,
                  style: CustomTextStyles.titleSmallGray800),
              CustomImageView(
                  imagePath: ImageConstant.imgVector22,
                  height: 5.v,
                  width: 10.h,
                  margin: EdgeInsets.only(top: 5.v, bottom: 8.v))
            ]));
  }

  /// Section Widget
  Widget _buildFortyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    margin: EdgeInsets.only(right: 166.h),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlineLightGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2),
                    child: Container(
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.lightGreen500,
                            borderRadius: BorderRadius.circular(5.h)))),
                SizedBox(height: 6.v),
                Text("msg_plant_protien_bowl".tr,
                    style: CustomTextStyles.bodyMediumBlack900),
                Text("lbl_220".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallGray800_1),
                SizedBox(height: 3.v),
                Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(children: [
                      Container(
                          height: 12.v,
                          width: 83.h,
                          margin: EdgeInsets.only(top: 1.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 12.v,
                                    width: 83.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.yellowA10059,
                                        borderRadius:
                                            BorderRadius.circular(4.h)))),
                            CustomRatingBar(
                                alignment: Alignment.center, initialRating: 5)
                          ])),
                      Container(
                          height: 12.v,
                          width: 44.h,
                          margin: EdgeInsets.only(left: 12.h),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 12.v,
                                        width: 44.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.deepOrange20082,
                                            borderRadius:
                                                BorderRadius.circular(4.h),
                                            border: Border.all(
                                                color: appTheme.deepOrangeA700,
                                                width: 1.h)))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("lbl_must_try".tr,
                                        style: CustomTextStyles
                                            .bodySmallDeeporangeA70001))
                              ]))
                    ])),
                SizedBox(height: 4.v),
                SizedBox(
                    width: 185.h,
                    child: ReadMoreText("msg_veg_preparation".tr,
                        trimLines: 2,
                        colorClickableText: appTheme.gray800,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "lbl_read_more".tr,
                        moreStyle:
                            theme.textTheme.bodySmall!.copyWith(height: 1.35),
                        lessStyle:
                            theme.textTheme.bodySmall!.copyWith(height: 1.35)))
              ]),
              Container(
                  height: 101.v,
                  width: 92.h,
                  margin: EdgeInsets.only(bottom: 6.v),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMonikaGrabkows,
                        height: 89.v,
                        width: 92.h,
                        radius: BorderRadius.circular(10.h),
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            height: 34.v,
                            width: 69.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              top: 2.v, bottom: 6.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.h),
                                          decoration: AppDecoration
                                              .outlinePrimary
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 1.v),
                                                    child: Text("lbl_1".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnPrimary)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 18.h, top: 1.v),
                                                    child: Text("lbl2".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeOnPrimary))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 3.h),
                                          child: Text("lbl3".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallOnPrimary)))
                                ])))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return SizedBox(
        height: 128.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 23.h, right: 10.h, bottom: 21.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 166.h),
                                  padding: EdgeInsets.all(3.h),
                                  decoration: AppDecoration.outlineLightGreen
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder2),
                                  child: Container(
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.lightGreen500,
                                          borderRadius:
                                              BorderRadius.circular(5.h)))),
                              SizedBox(height: 7.v),
                              SizedBox(
                                  height: 31.v,
                                  width: 110.h,
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                                "msg_spring_veg_plater".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumBlack900)),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text("lbl_350".tr,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodySmallGray800_1))
                                      ])),
                              SizedBox(height: 4.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    Container(
                                        height: 12.v,
                                        width: 83.h,
                                        margin: EdgeInsets.only(top: 1.v),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 12.v,
                                                      width: 83.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .yellowA10059,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.h)))),
                                              CustomRatingBar(
                                                  alignment: Alignment.center,
                                                  initialRating: 5)
                                            ])),
                                    Container(
                                        height: 12.v,
                                        width: 44.h,
                                        margin: EdgeInsets.only(left: 12.h),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 12.v,
                                                      width: 44.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .deepOrange20082,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.h),
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .deepOrangeA700,
                                                              width: 1.h)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text("lbl_must_try".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallDeeporangeA70001))
                                            ]))
                                  ])),
                              SizedBox(height: 4.v),
                              SizedBox(
                                  width: 185.h,
                                  child: ReadMoreText("msg_veg_preparation".tr,
                                      trimLines: 2,
                                      colorClickableText: appTheme.gray800,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: "lbl_read_more".tr,
                                      moreStyle: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.35),
                                      lessStyle: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.35)))
                            ]),
                        Container(
                            height: 102.v,
                            width: 92.h,
                            margin: EdgeInsets.only(bottom: 5.v),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                          height: 89.v,
                                          width: 92.h,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAyeshaFirdaus,
                                                    height: 89.v,
                                                    width: 92.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                            10.h),
                                                    alignment:
                                                        Alignment.center),
                                                CustomElevatedButton(
                                                    height: 29.v,
                                                    width: 89.h,
                                                    text: "lbl_menu".tr,
                                                    margin: EdgeInsets.only(
                                                        top: 28.v),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillBlackTL14,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .titleSmallSemiBold,
                                                    alignment:
                                                        Alignment.topCenter)
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                          height: 26.v,
                                          width: 70.h,
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment
                                                        .bottomCenter,
                                                    child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    19.h,
                                                                vertical: 1.v),
                                                        decoration: AppDecoration
                                                            .outlineRedA
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder5),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                  height: 1.v),
                                                              Text("lbl_add".tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumRedA700)
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 6.h),
                                                        child: Text("lbl2".tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumRedA700)))
                                              ])))
                                ]))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 76.v),
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.outlineGray800,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 141.h,
                            margin: EdgeInsets.only(top: 4.v, bottom: 7.v),
                            padding: EdgeInsets.all(1.h),
                            decoration: AppDecoration.fillIndigoA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Text("msg_30_off_up_to_75".tr,
                                style: CustomTextStyles.labelLargeOnPrimary)),
                        Container(
                            width: 219.h,
                            margin: EdgeInsets.only(left: 30.h, top: 3.v),
                            child: Text("msg_use_code_zomsafety".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallIndigoA700
                                    .copyWith(height: 1.65)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildViewCart(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 19.h, right: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 3.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_1_item".tr,
                            style: CustomTextStyles.bodySmallOnPrimary),
                        SizedBox(height: 2.v),
                        SizedBox(
                            width: 66.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_279".tr,
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary),
                                  Text("lbl_plus_taxes".tr,
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary8)
                                ]))
                      ])),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    onTapTxtViewCart(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.v),
                      child: Text("lbl_view_cart".tr,
                          style: CustomTextStyles.bodyMediumOnPrimary15))),
              CustomImageView(
                  imagePath: ImageConstant.imgContinueOption,
                  height: 8.v,
                  width: 4.h,
                  margin: EdgeInsets.fromLTRB(14.h, 19.v, 1.h, 3.v))
            ]));
  }

  /// Shows a modal bottom sheet with [PlaceOrderBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapTxtViewCart(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => PlaceOrderBottomsheet(),
        isScrollControlled: true);
  }
}
