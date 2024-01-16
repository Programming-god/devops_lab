import '../models/five_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FiveItemWidget extends StatelessWidget {
  FiveItemWidget(
    this.fiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiveItemModel fiveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 149.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle34,
            height: 149.v,
            width: 319.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 145.v,
              width: 314.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 9.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 3.v,
                            width: 2.h,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 1.v,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.v,
                            width: 2.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 3.v,
                              bottom: 1.v,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 7.v,
                            width: 6.h,
                            margin: EdgeInsets.only(left: 8.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 3.v,
                      width: 2.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 3.v,
                      width: 2.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 145.v,
                      width: 314.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                        border: Border.all(
                          color: appTheme.yellow800,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
