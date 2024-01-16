import '../models/framefiftynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FramefiftynineItemWidget extends StatelessWidget {
  FramefiftynineItemWidget(
    this.framefiftynineItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  FramefiftynineItemModel framefiftynineItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        framefiftynineItemModelObj.frameFiftyNine!,
        style: TextStyle(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (framefiftynineItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray10001,
      selectedColor: appTheme.blueGray10001,
      shape: (framefiftynineItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimary,
                width: 1.h,
              ),
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
