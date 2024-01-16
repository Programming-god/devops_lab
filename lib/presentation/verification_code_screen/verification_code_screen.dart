import 'notifier/verification_code_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ovhay_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ovhay_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ovhay_s_application1/widgets/custom_pin_code_text_field.dart';

class VerificationCodeScreen extends ConsumerStatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  VerificationCodeScreenState createState() => VerificationCodeScreenState();
}

class VerificationCodeScreenState
    extends ConsumerState<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 65.h),
                child: Column(children: [
                  Text("lbl_91_90108589652".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Consumer(builder: (context, ref, _) {
                        return CustomPinCodeTextField(
                            context: context,
                            controller: ref
                                .watch(verificationCodeNotifier)
                                .otpController,
                            onChanged: (value) {
                              ref
                                  .watch(verificationCodeNotifier)
                                  .otpController
                                  ?.text = value;
                            });
                      })),
                  Spacer(),
                  Text("lbl_0_19".tr, style: theme.textTheme.bodyLarge),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_didn_t_receive_the".tr,
                                    style: theme.textTheme.bodyLarge),
                                Text("lbl_resend_now".tr,
                                    style: CustomTextStyles.bodyLargeGray400_1)
                              ]))),
                  SizedBox(height: 31.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgPhoneMenu,
                      height: 27.v,
                      width: 223.h),
                  SizedBox(height: 9.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBackOption,
            margin: EdgeInsets.only(left: 11.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapBackOption(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_we_have_sent_a_verification".tr));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapBackOption(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
