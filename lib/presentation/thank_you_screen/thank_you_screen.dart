import 'notifier/thank_you_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_elevated_button.dart';
import 'package:ovhay_s_application1/widgets/custom_icon_button.dart';

class ThankYouScreen extends ConsumerStatefulWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  ThankYouScreenState createState() => ThankYouScreenState();
}

class ThankYouScreenState extends ConsumerState<ThankYouScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 886.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder32),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 96.v),
                                        _buildGotIt(context)
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgPhoneMenuGray600,
                              height: 27.v,
                              width: 223.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 83.h, bottom: 51.v))
                        ]))))));
  }

  /// Section Widget
  Widget _buildGotIt(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 790.v,
                width: 389.h,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 790.v,
                          width: 360.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(30.h)))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 63.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder60,
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup66),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: 238.v,
                                    width: 360.h),
                                SizedBox(height: 45.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: 231.h,
                                        margin: EdgeInsets.only(left: 56.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_thank_you".tr,
                                                  style: theme
                                                      .textTheme.displayMedium),
                                              TextSpan(
                                                  text: "msg_your_food_will_be"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallUnkemptBlack900),
                                              TextSpan(
                                                  text: "lbl".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallUnkemptRed500)
                                            ]),
                                            textAlign: TextAlign.center))),
                                SizedBox(height: 56.v),
                                SizedBox(
                                    height: 49.v,
                                    width: 109.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomElevatedButton(
                                              height: 48.v,
                                              width: 109.h,
                                              text: "lbl_got_it".tr,
                                              buttonStyle: CustomButtonStyles
                                                  .fillErrorContainer,
                                              buttonTextStyle: CustomTextStyles
                                                  .headlineSmallRobotoOnPrimary,
                                              alignment: Alignment.center),
                                          CustomElevatedButton(
                                              height: 49.v,
                                              width: 109.h,
                                              text: "lbl_got_it2".tr,
                                              buttonStyle: CustomButtonStyles
                                                  .fillYellowA,
                                              buttonTextStyle: CustomTextStyles
                                                  .headlineSmallRobotoBlack900,
                                              onPressed: () {
                                                onTapGotIt(context);
                                              },
                                              alignment: Alignment.center)
                                        ])),
                                SizedBox(height: 16.v)
                              ]))),
                  Padding(
                      padding: EdgeInsets.only(left: 14.h, top: 40.v),
                      child: CustomIconButton(
                          height: 52.v,
                          width: 50.h,
                          padding: EdgeInsets.all(7.h),
                          alignment: Alignment.topLeft,
                          onTap: () {
                            onTapBtnArrowDown(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowDown)))
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapGotIt(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
