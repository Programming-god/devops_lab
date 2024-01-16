import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/offercomponent_item_model.dart';
import '../models/dynamictext_item_model.dart';
import '../models/eathealthy_item_model.dart';
import 'package:ovhay_s_application1/presentation/home_screen/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(HomeState(
        searchController: TextEditingController(),
        searchController1: TextEditingController(),
        popularController: TextEditingController(),
        homeModelObj: HomeModel(offercomponentItemList: [
          OffercomponentItemModel(
              uptoTextProp: "UP TO ",
              discountTextProp: "60% OFF",
              noCookingTextProp: "no cooking",
              julyTextProp: "July",
              imageProp: ImageConstant.imgGroup54,
              thumbsUpImageProp: ImageConstant.imgThumbsUp),
          OffercomponentItemModel(thumbsUpImageProp: ImageConstant.imgIntersect)
        ], dynamictextItemList: [
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgAtikahAkhtarD,
              dynamicText: "Biryani"),
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgIzzahEper6ewyufyUnsplash,
              dynamicText: "Haleem"),
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgAnnaPelzerIgf,
              dynamicText: "Healthy"),
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgShouravSheikh,
              dynamicText: "Pizza"),
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgSyedFHashemi,
              dynamicText: "Chicken"),
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgDavidHolifield,
              dynamicText: "Burger"),
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgFoodPhotograph,
              dynamicText: "Cake"),
          DynamictextItemModel(
              dynamicImage: ImageConstant.imgCindyFernandez,
              dynamicText: "Shawarma")
        ], eathealthyItemList: [
          EathealthyItemModel(
              image: ImageConstant.imgSamMoqadamOxp,
              text1: "Eat Healthy",
              text2: "Healthy food",
              text3: "Zomato funds environmental projects to offset ",
              text4: "offset delivery carbon footprint ",
              forOne: " 300 for one",
              text5: "MAX SAFETY",
              text6: "DELIVERY"),
          EathealthyItemModel(
              image: ImageConstant.imgAleksandraTana, forOne: "₹150 for one"),
          EathealthyItemModel(
              image: ImageConstant.imgJuniorReisFmx,
              text1: "Hanuman Sweets",
              text2: "Mithai, Beverages"),
          EathealthyItemModel(
              image: ImageConstant.imgKarinaKashuba,
              text1: "Snacks Corner",
              text2: "Beverages"),
          EathealthyItemModel(
              image: ImageConstant.imgShreyakSingh0,
              forOne: "₹150 for one",
              text5: "MAX SAFETY",
              text6: "DELIVERY"),
          EathealthyItemModel(
              text1: "Tinku Fast Food Center", text2: "Chinese, Italian")
        ]))));

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}
