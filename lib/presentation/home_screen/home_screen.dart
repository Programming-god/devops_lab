import '../home_screen/widgets/dynamictext_item_widget.dart';
import '../home_screen/widgets/eathealthy_item_widget.dart';
import '../home_screen/widgets/offercomponent_item_widget.dart';
import 'models/dynamictext_item_model.dart';
import 'models/eathealthy_item_model.dart';
import 'models/offercomponent_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/core/app_export.dart';
import 'package:ovhay_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:ovhay_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ovhay_s_application1/widgets/custom_outlined_button.dart';
import 'package:ovhay_s_application1/widgets/custom_search_view.dart';
import 'package:ovhay_s_application1/widgets/custom_text_form_field.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTopBar(context),
                  SizedBox(height: 33.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 14.h),
                              child: Column(children: [
                                _buildOfferComponent(context),
                                SizedBox(height: 46.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("msg_eat_what_makes_you".tr,
                                            style:
                                                theme.textTheme.titleLarge))),
                                SizedBox(height: 16.v),
                                _buildDynamicText(context),
                                SizedBox(height: 27.v),
                                _buildSeeMore(context),
                                SizedBox(height: 17.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("msg_396_restaurants".tr,
                                        style: theme.textTheme.titleLarge)),
                                SizedBox(height: 24.v),
                                _buildEatHealthy(context),
                                SizedBox(height: 106.v),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPhoneMenuGray600,
                                    height: 27.v,
                                    width: 223.h)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildPRO(BuildContext context) {
    return CustomOutlinedButton(
        width: 58.h,
        text: "lbl_pro".tr,
        margin: EdgeInsets.only(left: 14.h, bottom: 1.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 6.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLightbulb,
                height: 15.v,
                width: 12.h)));
  }

  /// Section Widget
  Widget _buildCuisines(BuildContext context) {
    return CustomOutlinedButton(
        width: 81.h,
        text: "lbl_cuisines".tr,
        margin: EdgeInsets.only(left: 15.h, bottom: 1.v));
  }

  /// Section Widget
  Widget _buildPopular(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          width: 81.h,
          controller: ref.watch(homeNotifier).popularController,
          hintText: "lbl_popular".tr,
          hintStyle: CustomTextStyles.bodySmallBlack90012,
          textInputAction: TextInputAction.done,
          alignment: Alignment.centerRight,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.v));
    });
  }

  /// Section Widget
  Widget _buildTopBar(BuildContext context) {
    return SizedBox(
        height: 205.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: 46.v,
                            centerTitle: true,
                            title: Consumer(builder: (context, ref, _) {
                              return AppbarTitleSearchview(
                                  hintText: "lbl_basvangudi".tr,
                                  controller:
                                      ref.watch(homeNotifier).searchController);
                            })),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, right: 30.h),
                            child: Consumer(builder: (context, ref, _) {
                              return CustomSearchView(
                                  controller:
                                      ref.watch(homeNotifier).searchController1,
                                  hintText: "msg_restaurant_name".tr,
                                  contentPadding: EdgeInsets.only(
                                      top: 10.v, right: 30.h, bottom: 10.v));
                            })),
                        SizedBox(height: 43.v)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    height: 30.v,
                    width: 76.h,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 29.v,
                              width: 76.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.h),
                                  border: Border.all(
                                      color: appTheme.gray300, width: 1.h)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 33.h,
                              margin: EdgeInsets.only(left: 19.h),
                              child: Text("lbl_max_safety".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmallBlack90012)))
                    ])),
                _buildPRO(context),
                _buildCuisines(context),
                Container(
                    height: 29.v,
                    width: 138.h,
                    margin: EdgeInsets.only(left: 12.h, bottom: 1.v),
                    child: Stack(alignment: Alignment.centerRight, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 4.v),
                              decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 1.v),
                                    Text("lbl_rating".tr,
                                        style: CustomTextStyles
                                            .bodySmallBlack90012)
                                  ]))),
                      _buildPopular(context)
                    ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildOfferComponent(BuildContext context) {
    return SizedBox(
        height: 123.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                    width: 47.0.h,
                    child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        indent: 12.0.h,
                        endIndent: 12.0.h));
              },
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.offercomponentItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                OffercomponentItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.offercomponentItemList[index] ??
                    OffercomponentItemModel();
                return OffercomponentItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildDynamicText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 18.h),
        child: Consumer(builder: (context, ref, _) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 103.v,
                  crossAxisCount: 4,
                  mainAxisSpacing: 105.h,
                  crossAxisSpacing: 105.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.dynamictextItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                DynamictextItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.dynamictextItemList[index] ??
                    DynamictextItemModel();
                return DynamictextItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildSeeMore(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 160.h, vertical: 5.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_see_more".tr,
                  style: CustomTextStyles.bodySmallBlack9009),
              CustomImageView(
                  imagePath: ImageConstant.imgVector10,
                  height: 3.v,
                  width: 6.h,
                  margin: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 5.v))
            ]));
  }

  /// Section Widget
  Widget _buildEatHealthy(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 32.v);
          },
          itemCount:
              ref.watch(homeNotifier).homeModelObj?.eathealthyItemList.length ??
                  0,
          itemBuilder: (context, index) {
            EathealthyItemModel model = ref
                    .watch(homeNotifier)
                    .homeModelObj
                    ?.eathealthyItemList[index] ??
                EathealthyItemModel();
            return EathealthyItemWidget(model, onTapEatHealthy: () {
              onTapEatHealthy(context);
            });
          });
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
          width: double.maxFinite,
          child: Divider(color: theme.colorScheme.onPrimary.withOpacity(1))),
      SizedBox(height: 18.v),
      CustomImageView(
          imagePath: ImageConstant.imgBottomNavBar, height: 26.v, width: 307.h)
    ]));
  }

  /// Navigates to the eatHealthyPageTabContainerScreen when the action is triggered.
  onTapEatHealthy(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.eatHealthyPageTabContainerScreen,
    );
  }
}
