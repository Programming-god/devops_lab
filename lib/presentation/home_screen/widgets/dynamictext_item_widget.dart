import '../models/dynamictext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class DynamictextItemWidget extends StatelessWidget {
  DynamictextItemWidget(
    this.dynamictextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamictextItemModel dynamictextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: dynamictextItemModelObj?.dynamicImage,
          height: 77.adaptSize,
          width: 77.adaptSize,
          radius: BorderRadius.circular(
            38.h,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          dynamictextItemModelObj.dynamicText!,
          style: CustomTextStyles.bodySmallBlack90012,
        ),
      ],
    );
  }
}
