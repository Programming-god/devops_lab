import 'notifier/eat_healthy_page_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/presentation/eat_healthy_page/eat_healthy_page.dart';
import 'package:ovhay_s_application1/presentation/view_cart_page/view_cart_page.dart';
import 'package:ovhay_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ovhay_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ovhay_s_application1/widgets/custom_elevated_button.dart';
import 'package:ovhay_s_application1/widgets/custom_radio_button.dart';

class EatHealthyPageTabContainerScreen extends ConsumerStatefulWidget {
  const EatHealthyPageTabContainerScreen({Key? key}) : super(key: key);

  @override
  EatHealthyPageTabContainerScreenState createState() =>
      EatHealthyPageTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class EatHealthyPageTabContainerScreenState
    extends ConsumerState<EatHealthyPageTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  _buildBackSymbol(context),
                  SizedBox(height: 4.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Container(
                            margin: EdgeInsets.only(left: 15.h, right: 355.h),
                            decoration: AppDecoration.fillGreen800.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder2),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      height: 7.v,
                                      width: 41.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                    height: 6.v,
                                                    width: 41.h,
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .amber400,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    1.h)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "lbl_max_safety2".tr,
                                                    style: CustomTextStyles
                                                        .segoeUIGray800Regular))
                                          ])),
                                  Text("lbl_delivery".tr,
                                      style: CustomTextStyles
                                          .segoeUIOnPrimaryRegular)
                                ])),
                        SizedBox(height: 17.v),
                        _buildDeliveryDining(context),
                        SizedBox(height: 6.v),
                        _buildMODETIMEOFFERS(context),
                        SizedBox(height: 27.v),
                        _buildDeliveryBikeIcon(context),
                        SizedBox(height: 19.v),
                        _buildTabview(context),
                        SizedBox(
                            height: 525.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [EatHealthyPage(), ViewCartPage()]))
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildBackSymbol(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 11.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: 12.v,
                            leadingWidth: double.maxFinite,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgVector10,
                                margin:
                                    EdgeInsets.only(left: 10.h, right: 399.h),
                                onTap: () {
                                  onTapBackSymbol(context);
                                })),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl_eat_healthy".tr,
                                style: theme.textTheme.headlineMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("msg_healthy_food_south".tr,
                                style: CustomTextStyles.bodySmallGray800)),
                        SizedBox(height: 2.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("msg_kukatpally_hyderabad".tr,
                                style: CustomTextStyles.bodySmallGray60001))
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 25.v),
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
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary12),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSignal,
                                    height: 11.adaptSize,
                                    width: 11.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 6.h, top: 2.v, bottom: 2.v))
                              ]),
                              SizedBox(height: 2.v),
                              Text("lbl_delivery".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary8_1)
                            ])),
                    SizedBox(height: 5.v),
                    SizedBox(
                        height: 42.v,
                        width: 72.h,
                        child: Stack(alignment: Alignment.center, children: [
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
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_6".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary12),
                                        SizedBox(height: 6.v),
                                        Text("lbl_photos".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary8_1)
                                      ])))
                        ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildDeliveryDining(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
            onTap: () {
              onTapDeliveryDining(context);
            },
            child: SizedBox(
                height: 37.v,
                width: 382.h,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          margin: EdgeInsets.only(left: 56.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 42.h, vertical: 9.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("lbl_dining".tr,
                                    style:
                                        CustomTextStyles.bodyMediumGray60001),
                                Padding(
                                    padding: EdgeInsets.only(left: 62.h),
                                    child: Text("lbl_reviews".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray60001))
                              ]))),
                  CustomElevatedButton(
                      height: 37.v,
                      width: 112.h,
                      text: "lbl_delivery".tr,
                      buttonStyle: CustomButtonStyles.fillBlackTL5,
                      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary13,
                      alignment: Alignment.centerLeft)
                ]))));
  }

  /// Section Widget
  Widget _buildMODETIMEOFFERS(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 41.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, bottom: 2.v),
              child: Consumer(builder: (context, ref, _) {
                return Row(children: [
                  CustomRadioButton(
                      text: "lbl_delivery2".tr,
                      value: ref
                              .watch(eatHealthyPageTabContainerNotifier)
                              .eatHealthyPageTabContainerModelObj
                              ?.radioList[0] ??
                          "",
                      groupValue: ref
                          .watch(eatHealthyPageTabContainerNotifier)
                          .radioGroup,
                      onChange: (value) {
                        ref
                            .read(eatHealthyPageTabContainerNotifier.notifier)
                            .changeRadioButton1(value);
                      }),
                  Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: CustomRadioButton(
                          width: 130.h,
                          text: "lbl_mode".tr,
                          value: ref
                                  .watch(eatHealthyPageTabContainerNotifier)
                                  .eatHealthyPageTabContainerModelObj
                                  ?.radioList[1] ??
                              "",
                          groupValue: ref
                              .watch(eatHealthyPageTabContainerNotifier)
                              .radioGroup,
                          textStyle: CustomTextStyles.bodySmallGray600019,
                          isRightCheck: true,
                          onChange: (value) {
                            ref
                                .read(
                                    eatHealthyPageTabContainerNotifier.notifier)
                                .changeRadioButton1(value);
                          }))
                ]);
              })),
          Padding(
              padding: EdgeInsets.only(left: 8.h, bottom: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("lbl_time".tr,
                            style: CustomTextStyles.bodySmallGray600019)),
                    Text("lbl_40_mins".tr,
                        style: CustomTextStyles.bodySmallBlack9009_1)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 53.h,
                        margin: EdgeInsets.only(right: 6.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_offers".tr,
                                  style: CustomTextStyles.bodySmallGray600019),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSeeMoreIcon,
                                  height: 3.v,
                                  width: 6.h,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 2.v))
                            ])),
                    SizedBox(height: 1.v),
                    Text("lbl_view_all_3".tr,
                        style: CustomTextStyles.bodySmallBlack9009_1)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryBikeIcon(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.only(left: 15.h, right: 27.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              Container(
                  height: 16.v,
                  width: 24.h,
                  margin: EdgeInsets.only(top: 2.v),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                            height: 11.v,
                            width: 20.h,
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUserBlack900,
                                  height: 11.v,
                                  width: 20.h,
                                  alignment: Alignment.center),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector26,
                                  height: 1.v,
                                  width: 7.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 3.h, top: 2.v))
                            ]))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            decoration: AppDecoration.outlineGray200.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Container(
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.h),
                                    border: Border.all(
                                        color: appTheme.black900,
                                        width: 6.h))))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 1.v),
                            decoration: AppDecoration.outlineGray200.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Container(
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.h),
                                    border: Border.all(
                                        color: appTheme.black900,
                                        width: 6.h)))))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 2.v),
                  child: Text("msg_25_distance_charge".tr,
                      style: CustomTextStyles.bodySmallBlack900))
            ])));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 52.v,
        width: double.maxFinite,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black900,
            labelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.gray500,
            unselectedLabelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w400),
            indicatorColor: theme.colorScheme.onError,
            tabs: [
              Tab(child: Text("lbl_full_menu".tr)),
              Tab(child: Text("lbl_healthy".tr))
            ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBackSymbol(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the selectDishOneScreen when the action is triggered.
  onTapDeliveryDining(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectDishOneScreen,
    );
  }
}
