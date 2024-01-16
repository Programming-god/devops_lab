import 'notifier/select_dish_three_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

class SelectDishThreeScreen extends ConsumerStatefulWidget {
  const SelectDishThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SelectDishThreeScreenState createState() => SelectDishThreeScreenState();
}

class SelectDishThreeScreenState extends ConsumerState<SelectDishThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
