import 'notifier/select_dish_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';

class SelectDishScreen extends ConsumerStatefulWidget {
  const SelectDishScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SelectDishScreenState createState() => SelectDishScreenState();
}

class SelectDishScreenState extends ConsumerState<SelectDishScreen> {
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
