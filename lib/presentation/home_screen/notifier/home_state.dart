// ignore_for_file: must_be_immutable

part of 'home_notifier.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.searchController,
    this.searchController1,
    this.popularController,
    this.homeModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? searchController1;

  TextEditingController? popularController;

  HomeModel? homeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchController1,
        popularController,
        homeModelObj,
      ];

  HomeState copyWith({
    TextEditingController? searchController,
    TextEditingController? searchController1,
    TextEditingController? popularController,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      searchController1: searchController1 ?? this.searchController1,
      popularController: popularController ?? this.popularController,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
