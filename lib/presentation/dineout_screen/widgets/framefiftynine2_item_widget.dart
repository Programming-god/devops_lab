import '../models/framefiftynine2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Framefiftynine2ItemWidget extends StatelessWidget {
  Framefiftynine2ItemWidget(
    this.framefiftynine2ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Framefiftynine2ItemModel framefiftynine2ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        framefiftynine2ItemModelObj.frameFiftyNine!,
        style: TextStyle(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (framefiftynine2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray10001,
      selectedColor: appTheme.yellow800,
      shape: (framefiftynine2ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
