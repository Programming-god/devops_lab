import '../dineout_screen/widgets/five_item_widget.dart';
import '../dineout_screen/widgets/framefiftynine2_item_widget.dart';
import 'models/dineout_model.dart';
import 'models/five_item_model.dart';
import 'models/framefiftynine2_item_model.dart';
import 'notifier/dineout_notifier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_drop_down.dart';
import 'package:readmore/readmore.dart';

class DineoutScreen extends ConsumerStatefulWidget {
  const DineoutScreen({Key? key}) : super(key: key);

  @override
  DineoutScreenState createState() => DineoutScreenState();
}

class DineoutScreenState extends ConsumerState<DineoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 14.v),
                child: Column(children: [
                  _buildTime(context),
                  SizedBox(height: 11.v),
                  _buildFive(context),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 35.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_villagio".tr,
                                    style:
                                        CustomTextStyles.titleMediumYellow800),
                                TextSpan(
                                    text: "msg_restaurant_bar".tr,
                                    style: theme.textTheme.titleMedium)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 10.v),
                  Divider(
                      color: appTheme.yellow800, indent: 35.h, endIndent: 38.h),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 123.v,
                          width: 282.h,
                          margin: EdgeInsets.only(left: 24.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 38.v),
                                    child: Text("lbl_get_direction".tr,
                                        style: CustomTextStyles.labelLarge_1))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 38.h, bottom: 36.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_10_30".tr,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          TextSpan(
                                              text: "lbl_am".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray700),
                                          TextSpan(
                                              text: "lbl_11_00".tr,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          TextSpan(
                                              text: "lbl_pm".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray700)
                                        ]),
                                        textAlign: TextAlign.left))),
                            CustomImageView(
                                imagePath: ImageConstant.imgLinkedinYellow800,
                                height: 22.v,
                                width: 15.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 7.h, top: 11.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgClockYellow800,
                                height: 22.v,
                                width: 15.h,
                                alignment: Alignment.bottomLeft,
                                margin:
                                    EdgeInsets.only(left: 7.h, bottom: 34.v)),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 93.v,
                                    width: 276.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.h, vertical: 6.v),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                  width: 120.h,
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "msg_villagio_resto_bar2"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .titleSmallInterBlack900),
                                                        TextSpan(
                                                            text:
                                                                "lbl_20_30_min_2km"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallInterBlack900)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  width: 134.h,
                                                  margin: EdgeInsets.only(
                                                      top: 24.v),
                                                  child: Text(
                                                      "msg_villagio_fast_food"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmallInterBlack900Light)))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 66.h,
                                    margin: EdgeInsets.only(
                                        left: 22.h, bottom: 21.v),
                                    child: Text("msg_30_off_upto_129".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallInterBlack900Light))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 49.v),
                                    child: Text("msg".tr,
                                        style: CustomTextStyles
                                            .bodySmallInterBlack900Light))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage4,
                                              height: 22.v,
                                              width: 15.h),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15.h,
                                                  top: 2.v,
                                                  bottom: 3.v),
                                              child: Text("lbl_show_menu".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray70012
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline)))
                                        ])))
                          ]))),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: 297.h,
                          margin: EdgeInsets.only(right: 23.h),
                          child: ReadMoreText("msg_villagio_restaurant2".tr,
                              trimLines: 5,
                              colorClickableText: appTheme.yellow800,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "lbl_read_more2".tr,
                              moreStyle: theme.textTheme.bodyMedium,
                              lessStyle: theme.textTheme.bodyMedium))),
                  SizedBox(height: 39.v),
                  Consumer(builder: (context, ref, _) {
                    return CustomDropDown(
                        width: 92.h,
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(10.h, 15.v, 6.h, 15.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdownGray700,
                                height: 10.adaptSize,
                                width: 10.adaptSize)),
                        hintText: "lbl_time2".tr,
                        items: ref
                                .watch(dineoutNotifier)
                                .dineoutModelObj
                                ?.dropdownItemList ??
                            [],
                        prefix: Container(
                            margin: EdgeInsets.all(10.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgClockYellow80020x20,
                                height: 20.adaptSize,
                                width: 20.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 40.v),
                        onChanged: (value) {
                          ref.watch(dineoutNotifier).selectedDropDownValue =
                              value;
                        });
                  }),
                  SizedBox(height: 56.v),
                  _buildNinetySeven(context),
                  SizedBox(height: 67.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgPhoneMenuGray600,
                      height: 27.v,
                      width: 223.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 63.h)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return SizedBox(
        height: 28.v,
        width: 383.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 10.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("lbl_9_27".tr,
                            style:
                                CustomTextStyles.titleSmallSFProTextBlack900),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 10.v,
                            width: 17.h,
                            margin: EdgeInsets.symmetric(vertical: 3.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgSettingsBlack900,
                            height: 15.v,
                            width: 21.h,
                            margin: EdgeInsets.only(left: 2.h, top: 2.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgTelevisionBlack900,
                            height: 12.v,
                            width: 25.h,
                            margin: EdgeInsets.only(
                                left: 2.h, top: 3.v, bottom: 2.v))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtGoBack(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 57.h),
                      child: Text("lbl_go_back".tr,
                          style: CustomTextStyles.titleLargeGray700))))
        ]));
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 38.h),
        child: Consumer(builder: (context, ref, _) {
          return CarouselSlider.builder(
              options: CarouselOptions(
                  height: 149.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    ref.watch(dineoutNotifier).sliderIndex = index;
                  }),
              itemCount: ref
                      .watch(dineoutNotifier)
                      .dineoutModelObj
                      ?.fiveItemList
                      .length ??
                  0,
              itemBuilder: (context, index, realIndex) {
                FiveItemModel model = ref
                        .watch(dineoutNotifier)
                        .dineoutModelObj
                        ?.fiveItemList[index] ??
                    FiveItemModel();
                return FiveItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildNinetySeven(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_available_time_slots".tr,
              style: theme.textTheme.titleMedium),
          SizedBox(height: 15.v),
          Align(
              alignment: Alignment.center,
              child: Consumer(builder: (context, ref, _) {
                return Wrap(
                    runSpacing: 14.31.v,
                    spacing: 14.31.h,
                    children: List<Widget>.generate(
                        ref
                                .watch(dineoutNotifier)
                                .dineoutModelObj
                                ?.framefiftynine2ItemList
                                .length ??
                            0, (index) {
                      Framefiftynine2ItemModel model = ref
                              .watch(dineoutNotifier)
                              .dineoutModelObj
                              ?.framefiftynine2ItemList[index] ??
                          Framefiftynine2ItemModel();
                      return Framefiftynine2ItemWidget(model,
                          onSelectedChipView1: (value) {
                        ref
                            .read(dineoutNotifier.notifier)
                            .onSelectedChipView1(index, value);
                      });
                    }));
              }))
        ]));
  }

  /// Navigates to the selectDishOneScreen when the action is triggered.
  onTapTxtGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectDishOneScreen,
    );
  }
}
