import 'notifier/eat_healthy_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_elevated_button.dart';
import 'package:ovhay_s_application1/widgets/custom_outlined_button.dart';
import 'package:ovhay_s_application1/widgets/custom_rating_bar.dart';
import 'package:ovhay_s_application1/widgets/custom_switch.dart';
import 'package:readmore/readmore.dart';

class EatHealthyPage extends ConsumerStatefulWidget {
  const EatHealthyPage({Key? key}) : super(key: key);

  @override
  EatHealthyPageState createState() => EatHealthyPageState();
}

class EatHealthyPageState extends ConsumerState<EatHealthyPage>
    with AutomaticKeepAliveClientMixin<EatHealthyPage> {
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
                  SizedBox(height: 18.v),
                  Column(children: [
                    _buildSearch(context),
                    SizedBox(height: 15.v),
                    Divider(color: appTheme.gray300),
                    SizedBox(height: 25.v),
                    _buildRecommended(context),
                    SizedBox(height: 32.v),
                    _buildTwentyThree(context),
                    SizedBox(height: 28.v),
                    _buildMenu(context),
                    SizedBox(height: 7.v),
                    _buildOFF(context),
                    SizedBox(height: 17.v),
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
                    margin: EdgeInsets.only(top: 6.v, bottom: 12.v),
                    value: ref.watch(eatHealthyNotifier).isSelectedSwitch,
                    onChange: (value) {
                      ref
                          .read(eatHealthyNotifier.notifier)
                          .changeSwitchBox1(value);
                    });
              }),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 10.v, bottom: 15.v),
                  child: Text("lbl_veg".tr,
                      style: CustomTextStyles.bodySmallGray8008)),
              Spacer(flex: 30),
              Consumer(builder: (context, ref, _) {
                return CustomSwitch(
                    margin: EdgeInsets.only(top: 6.v, bottom: 12.v),
                    value: ref.watch(eatHealthyNotifier).isSelectedSwitch1,
                    onChange: (value) {
                      ref
                          .read(eatHealthyNotifier.notifier)
                          .changeSwitchBox2(value);
                    });
              }),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 10.v, bottom: 15.v),
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
                  style: CustomTextStyles.bodySmallGray80011),
              CustomImageView(
                  imagePath: ImageConstant.imgVector22,
                  height: 5.v,
                  width: 10.h,
                  margin: EdgeInsets.only(top: 3.v, bottom: 6.v))
            ]));
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 10.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(right: 166.h),
                padding: EdgeInsets.all(3.h),
                decoration: AppDecoration.outlineLightGreen
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
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
                                    borderRadius: BorderRadius.circular(4.h)))),
                        CustomRatingBar(
                            alignment: Alignment.center, initialRating: 5)
                      ])),
                  Container(
                      height: 12.v,
                      width: 44.h,
                      margin: EdgeInsets.only(left: 12.h),
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 12.v,
                                width: 44.h,
                                decoration: BoxDecoration(
                                    color: appTheme.deepOrange20082,
                                    borderRadius: BorderRadius.circular(4.h),
                                    border: Border.all(
                                        color: appTheme.deepOrangeA700,
                                        width: 1.h)))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("lbl_must_try".tr,
                                style:
                                    CustomTextStyles.bodySmallDeeporangeA70001))
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
          Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: _buildAyeshaFirdaus(context,
                  ayeshaFirdaus: ImageConstant.imgMonikaGrabkows,
                  aDD: "lbl_add".tr,
                  text: "lbl2".tr, onTapTwelve: () {
                onTapNine(context);
              }))
        ]));
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 13.h),
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
                                        child: Text("msg_spring_veg_plater".tr,
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
                                                      color:
                                                          appTheme.yellowA10059,
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                          BorderRadius.circular(
                                                              4.h),
                                                      border: Border.all(
                                                          color: appTheme
                                                              .deepOrangeA700,
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
                                  moreStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.35),
                                  lessStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.35)))
                        ]),
                    Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: _buildAyeshaFirdaus(context,
                            ayeshaFirdaus: ImageConstant.imgAyeshaFirdaus,
                            aDD: "lbl_add".tr,
                            text: "lbl2".tr))
                  ])),
          SizedBox(height: 1.v),
          CustomElevatedButton(
              height: 29.v,
              width: 89.h,
              text: "lbl_menu".tr,
              buttonStyle: CustomButtonStyles.fillBlackTL14,
              buttonTextStyle: CustomTextStyles.titleSmallSemiBold,
              alignment: Alignment.centerRight)
        ]));
  }

  /// Section Widget
  Widget _buildOFF(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray800,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              width: 141.h,
              margin: EdgeInsets.only(top: 6.v, bottom: 7.v),
              padding: EdgeInsets.all(1.h),
              decoration: AppDecoration.fillIndigoA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("msg_30_off_up_to_75".tr,
                  style: CustomTextStyles.labelLargeOnPrimary)),
          Container(
              width: 219.h,
              margin: EdgeInsets.only(left: 30.h, top: 5.v),
              child: Text("msg_use_code_zomsafety".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallIndigoA700
                      .copyWith(height: 1.65)))
        ]));
  }

  /// Common widget
  Widget _buildAyeshaFirdaus(
    BuildContext context, {
    required String ayeshaFirdaus,
    required String aDD,
    required String text,
    Function? onTapTwelve,
  }) {
    return SizedBox(
        height: 102.v,
        width: 92.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ayeshaFirdaus,
              height: 89.v,
              width: 92.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 26.v,
                  width: 70.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    GestureDetector(
                        onTap: () {
                          onTapTwelve!.call();
                        },
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.h, vertical: 1.v),
                                decoration: AppDecoration.outlineRedA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.v),
                                      Text(aDD,
                                          style: CustomTextStyles
                                              .bodyMediumRedA700
                                              .copyWith(
                                                  color: appTheme.redA700))
                                    ])))),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 6.h),
                            child: Text(text,
                                style: CustomTextStyles.bodyMediumRedA700
                                    .copyWith(color: appTheme.redA700))))
                  ])))
        ]));
  }

  /// Navigates to the selectDishTwoScreen when the action is triggered.
  onTapNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectDishTwoScreen,
    );
  }
}
