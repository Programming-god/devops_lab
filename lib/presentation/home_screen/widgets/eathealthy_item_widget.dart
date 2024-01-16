import '../models/eathealthy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class EathealthyItemWidget extends StatelessWidget {
  EathealthyItemWidget(
    this.eathealthyItemModelObj, {
    Key? key,
    this.onTapEatHealthy,
  }) : super(
          key: key,
        );

  EathealthyItemModel eathealthyItemModelObj;

  VoidCallback? onTapEatHealthy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEatHealthy!.call();
      },
      child: Container(
        height: 251.v,
        width: 385.h,
        decoration: AppDecoration.outlineBlack,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: eathealthyItemModelObj?.image,
              height: 251.v,
              width: 381.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  top: 166.v,
                  right: 4.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 7.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 33.v,
                            width: 76.h,
                            margin: EdgeInsets.only(left: 18.h),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    eathealthyItemModelObj.text1!,
                                    style:
                                        CustomTextStyles.bodyMediumBlack90015,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      eathealthyItemModelObj.text2!,
                                      style:
                                          CustomTextStyles.bodySmallGray800_1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 21.adaptSize,
                                width: 21.adaptSize,
                                margin: EdgeInsets.only(bottom: 5.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      eathealthyItemModelObj.text3!,
                                      style:
                                          CustomTextStyles.bodySmallGray800_1,
                                    ),
                                    Text(
                                      eathealthyItemModelObj.text4!,
                                      style:
                                          CustomTextStyles.bodySmallGray800_1,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 13.v,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomElevatedButton(
                            height: 16.v,
                            width: 44.h,
                            text: "lbl_4_3".tr,
                            margin: EdgeInsets.only(right: 1.h),
                            buttonTextStyle:
                                CustomTextStyles.bodySmallOnPrimary,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: Text(
                              eathealthyItemModelObj.forOne!,
                              style: CustomTextStyles.bodySmallGray800_1,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 3.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 2.h,
                                  vertical: 5.v,
                                ),
                                decoration: AppDecoration.fillOnPrimaryContainer
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgVector12,
                                  height: 7.v,
                                  width: 11.h,
                                  alignment: Alignment.topRight,
                                ),
                              ),
                              Container(
                                height: 18.v,
                                width: 61.h,
                                margin: EdgeInsets.only(
                                  left: 6.h,
                                  top: 2.v,
                                ),
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 18.v,
                                        width: 61.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.green800,
                                          borderRadius: BorderRadius.circular(
                                            2.h,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            2.h,
                                          ),
                                          child: LinearProgressIndicator(
                                            value: 0.97,
                                            backgroundColor: appTheme.green800,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              appTheme.amber400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 8.h),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              eathealthyItemModelObj.text5!,
                                              style: CustomTextStyles
                                                  .segoeUIGray800,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                eathealthyItemModelObj.text6!,
                                                style: CustomTextStyles
                                                    .segoeUIOnPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
