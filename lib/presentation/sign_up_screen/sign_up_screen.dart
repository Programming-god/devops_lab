import 'notifier/sign_up_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_elevated_button.dart';
import 'package:ovhay_s_application1/widgets/custom_text_form_field.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0.48),
                        end: Alignment(1.45, 0.48),
                        colors: [theme.colorScheme.primary, appTheme.pink500])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Column(children: [
                      SizedBox(height: 43.v),
                      _buildSkip(context),
                      Spacer(),
                      _buildPhone(context),
                      SizedBox(height: 22.v),
                      _buildSendOTP(context),
                      SizedBox(height: 35.v),
                      _buildOR(context),
                      SizedBox(height: 37.v),
                      _buildContinueWithEmail(context),
                      SizedBox(height: 22.v),
                      _buildFacebook1(context),
                      SizedBox(height: 25.v),
                      SizedBox(
                          height: 36.v,
                          width: 291.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 43.h),
                                    child: Text("msg_by_continuing_you".tr,
                                        style: CustomTextStyles
                                            .bodyMediumOnPrimary))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("msg_terms_of_service".tr,
                                        style: CustomTextStyles
                                            .bodyMediumOnPrimary))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("lbl_privacy_policy".tr,
                                          style: CustomTextStyles
                                              .bodyMediumOnPrimary),
                                      Padding(
                                          padding: EdgeInsets.only(left: 7.h),
                                          child: Text("lbl_content_policy".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumOnPrimary))
                                    ]))
                          ]))
                    ]))),
            bottomNavigationBar: _buildLineFour(context)));
  }

  /// Section Widget
  Widget _buildSkip(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 59.h,
        text: "lbl_skip".tr,
        buttonStyle: CustomButtonStyles.fillBlack,
        buttonTextStyle: CustomTextStyles.bodyMediumGray300,
        alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signUpNotifier).phoneController,
              hintText: "lbl_91_9010858965".tr,
              textInputAction: TextInputAction.done);
        }));
  }

  /// Section Widget
  Widget _buildSendOTP(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_send_otp".tr,
        margin: EdgeInsets.only(left: 7.h),
        buttonStyle: CustomButtonStyles.fillBlackTL8,
        buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryRegular,
        onPressed: () {
          onTapSendOTP(context);
        });
  }

  /// Section Widget
  Widget _buildOR(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 7.v),
                  child: SizedBox(width: 144.h, child: Divider())),
              Text("lbl_or".tr, style: CustomTextStyles.bodyMediumGray300),
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 7.v),
                  child: SizedBox(width: 144.h, child: Divider()))
            ]));
  }

  /// Section Widget
  Widget _buildContinueWithEmail(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_continue_with_email".tr,
        margin: EdgeInsets.only(left: 7.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock, height: 25.v, width: 36.h)),
        buttonStyle: CustomButtonStyles.fillOnPrimary);
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_facebook".tr,
            margin: EdgeInsets.only(right: 5.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 20.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook1,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimary));
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_google".tr,
            margin: EdgeInsets.only(left: 5.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 20.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgSearch1,
                    height: 29.adaptSize,
                    width: 29.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimary));
  }

  /// Section Widget
  Widget _buildFacebook1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildFacebook(context), _buildGoogle(context)]));
  }

  /// Section Widget
  Widget _buildLineFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 61.h, right: 67.h, bottom: 27.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(width: 97.h, child: Divider()),
          SizedBox(width: 92.h, child: Divider(indent: 13.h)),
          SizedBox(width: 97.h, child: Divider(indent: 11.h))
        ]));
  }

  /// Navigates to the verificationCodeScreen when the action is triggered.
  onTapSendOTP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verificationCodeScreen,
    );
  }
}
