import '../select_dish_one_screen/widgets/framefiftynine_item_widget.dart';
import 'models/framefiftynine_item_model.dart';
import 'models/select_dish_one_model.dart';
import 'notifier/select_dish_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_drop_down.dart';
import 'package:ovhay_s_application1/widgets/custom_elevated_button.dart';
import 'package:readmore/readmore.dart';

class SelectDishOneScreen extends ConsumerStatefulWidget {
  const SelectDishOneScreen({Key? key}) : super(key: key);

  @override
  SelectDishOneScreenState createState() => SelectDishOneScreenState();
}

class SelectDishOneScreenState extends ConsumerState<SelectDishOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTime(context),
                      SizedBox(height: 19.v),
                      Divider(
                          color: appTheme.yellow800,
                          indent: 21.h,
                          endIndent: 38.h),
                      SizedBox(height: 4.v),
                      _buildTwentyOne(context),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 171.h),
                          child: Row(children: [
                            Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(1.h))),
                            Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 5.h, top: 2.v, bottom: 1.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(1.h))),
                            Container(
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                margin: EdgeInsets.only(left: 4.h),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(3.h))),
                            Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 5.h, top: 2.v, bottom: 1.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(1.h)))
                          ])),
                      SizedBox(height: 6.v),
                      Container(
                          height: 23.v,
                          width: 191.h,
                          margin: EdgeInsets.only(left: 21.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_villagio".tr,
                                          style: CustomTextStyles
                                              .titleMediumYellow800),
                                      TextSpan(
                                          text: "msg_restaurant_bar".tr,
                                          style: theme.textTheme.titleMedium)
                                    ]),
                                    textAlign: TextAlign.left)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRefresh,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                radius: BorderRadius.circular(7.h),
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 29.h))
                          ])),
                      SizedBox(height: 6.v),
                      Divider(
                          color: appTheme.yellow800,
                          indent: 21.h,
                          endIndent: 38.h),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h, right: 52.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgLinkedinYellow800,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 23.v)),
                                Container(
                                    height: 40.v,
                                    width: 186.h,
                                    margin:
                                        EdgeInsets.only(left: 15.h, top: 3.v),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 3.adaptSize,
                                                  width: 3.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 16.v, right: 16.h),
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.onPrimary
                                                          .withOpacity(1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.h)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 186.h,
                                                  child: Text(
                                                      "msg_360_san_lorenzo".tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmallGray70012
                                                          .copyWith(
                                                              height: 1.67))))
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 25.h, top: 24.v, bottom: 2.v),
                                    child: Text("lbl_get_direction".tr,
                                        style: CustomTextStyles.labelLarge_1))
                              ])),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgClockYellow800,
                                height: 20.adaptSize,
                                width: 20.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_10_30".tr,
                                          style: theme.textTheme.labelLarge),
                                      TextSpan(
                                          text: "lbl_am".tr,
                                          style: CustomTextStyles
                                              .bodySmallGray700),
                                      TextSpan(
                                          text: "lbl_11_00".tr,
                                          style: theme.textTheme.labelLarge),
                                      TextSpan(
                                          text: "lbl_pm".tr,
                                          style:
                                              CustomTextStyles.bodySmallGray700)
                                    ]),
                                    textAlign: TextAlign.left))
                          ])),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage4,
                                height: 20.adaptSize,
                                width: 20.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h, top: 2.v),
                                child: Text("lbl_show_menu".tr,
                                    style: CustomTextStyles.bodySmallGray70012
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ])),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 97.v,
                              width: 298.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUserYellow800,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                        top: 18.v, right: 73.h)),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        width: 298.h,
                                        child: ReadMoreText(
                                            "msg_villagio_restaurant2".tr,
                                            trimLines: 5,
                                            colorClickableText:
                                                appTheme.yellow800,
                                            trimMode: TrimMode.Line,
                                            trimCollapsedText:
                                                "lbl_read_more2".tr,
                                            moreStyle:
                                                theme.textTheme.bodyMedium,
                                            lessStyle:
                                                theme.textTheme.bodyMedium)))
                              ]))),
                      SizedBox(height: 6.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgMegaphone,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 40.h)),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(left: 47.h, right: 16.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Consumer(builder: (context, ref, _) {
                                      return CustomDropDown(
                                          width: 95.h,
                                          icon: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 10.h,
                                                  vertical: 13.v),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowdownGray700,
                                                  height: 10.adaptSize,
                                                  width: 10.adaptSize)),
                                          hintText: "lbl_date".tr,
                                          items: ref
                                                  .watch(selectDishOneNotifier)
                                                  .selectDishOneModelObj
                                                  ?.dropdownItemList ??
                                              [],
                                          prefix: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 10.h,
                                                  vertical: 8.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCalendar,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 36.v),
                                          onChanged: (value) {
                                            ref
                                                .watch(selectDishOneNotifier)
                                                .selectedDropDownValue = value;
                                          });
                                    }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.h, bottom: 1.v),
                                        child: Consumer(
                                            builder: (context, ref, _) {
                                          return CustomDropDown(
                                              width: 96.h,
                                              icon: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 10.h,
                                                      vertical: 13.v),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowdownGray700,
                                                      height: 10.adaptSize,
                                                      width: 10.adaptSize)),
                                              hintText: "lbl_time2".tr,
                                              items: ref
                                                      .watch(
                                                          selectDishOneNotifier)
                                                      .selectDishOneModelObj
                                                      ?.dropdownItemList1 ??
                                                  [],
                                              prefix: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 10.h,
                                                      vertical: 8.v),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClockYellow80020x20,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 36.v),
                                              onChanged: (value) {
                                                ref
                                                        .watch(
                                                            selectDishOneNotifier)
                                                        .selectedDropDownValue1 =
                                                    value;
                                              });
                                        })),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 21.h, bottom: 1.v),
                                        child: Consumer(
                                            builder: (context, ref, _) {
                                          return CustomDropDown(
                                              width: 106.h,
                                              icon: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 10.h,
                                                      vertical: 13.v),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowdownGray700,
                                                      height: 10.adaptSize,
                                                      width: 10.adaptSize)),
                                              hintText: "lbl_people".tr,
                                              items: ref
                                                      .watch(
                                                          selectDishOneNotifier)
                                                      .selectDishOneModelObj
                                                      ?.dropdownItemList2 ??
                                                  [],
                                              prefix: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 10.h,
                                                      vertical: 8.v),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSettingsYellow800,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 36.v),
                                              onChanged: (value) {
                                                ref
                                                        .watch(
                                                            selectDishOneNotifier)
                                                        .selectedDropDownValue2 =
                                                    value;
                                              });
                                        }))
                                  ]))),
                      SizedBox(height: 27.v),
                      CustomElevatedButton(
                          height: 40.v,
                          text: "lbl_find_slots".tr,
                          margin: EdgeInsets.only(left: 43.h, right: 38.h),
                          buttonStyle: CustomButtonStyles.fillYellow,
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onPressed: () {
                            onTapFindSlots(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 28.v),
                      _buildAvailableTimeSlots(context),
                      SizedBox(height: 90.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgPhoneMenuGray600,
                          height: 27.v,
                          width: 223.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 75.h))
                    ]))));
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Container(
        height: 28.v,
        width: 383.h,
        margin: EdgeInsets.only(left: 10.h),
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 10.v),
              child: _buildStatusBar(context)),
          Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtGoBack(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 57.h),
                      child: Text("lbl_go_back".tr,
                          style: CustomTextStyles.titleLargeGray700)))),
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
              child: Padding(
                  padding: EdgeInsets.only(left: 57.h),
                  child: Text("lbl_go_back".tr,
                      style: CustomTextStyles.titleLargeGray700)))
        ]));
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return Container(
        height: 134.v,
        width: 335.h,
        margin: EdgeInsets.only(left: 21.h),
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle30,
              height: 134.v,
              width: 335.h,
              radius: BorderRadius.circular(5.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 134.v,
                  width: 335.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle34,
                        height: 134.v,
                        width: 335.h,
                        radius: BorderRadius.circular(5.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 130.v,
                            width: 329.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.h, vertical: 28.v),
                            decoration: AppDecoration.outlineYellow.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                alignment: Alignment.topLeft,
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                })))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildAvailableTimeSlots(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text("msg_available_time_slots".tr,
                  style: theme.textTheme.titleMedium)),
          SizedBox(height: 18.v),
          Align(
              alignment: Alignment.centerRight,
              child: Consumer(builder: (context, ref, _) {
                return Wrap(
                    runSpacing: 15.v,
                    spacing: 15.h,
                    children: List<Widget>.generate(
                        ref
                                .watch(selectDishOneNotifier)
                                .selectDishOneModelObj
                                ?.framefiftynineItemList
                                .length ??
                            0, (index) {
                      FramefiftynineItemModel model = ref
                              .watch(selectDishOneNotifier)
                              .selectDishOneModelObj
                              ?.framefiftynineItemList[index] ??
                          FramefiftynineItemModel();
                      return FramefiftynineItemWidget(model,
                          onSelectedChipView1: (value) {
                        ref
                            .read(selectDishOneNotifier.notifier)
                            .onSelectedChipView1(index, value);
                      });
                    }));
              }))
        ]));
  }

  /// Common widget
  Widget _buildStatusBar(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("lbl_9_27".tr,
              style: CustomTextStyles.titleSmallSFProTextBlack900),
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
              margin: EdgeInsets.only(left: 2.h, top: 3.v, bottom: 2.v))
        ]);
  }

  /// Navigates to the eatHealthyPageTabContainerScreen when the action is triggered.
  onTapTxtGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.eatHealthyPageTabContainerScreen,
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the dineoutScreen when the action is triggered.
  onTapFindSlots(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dineoutScreen,
    );
  }
}
