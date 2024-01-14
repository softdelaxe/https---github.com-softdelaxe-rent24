// ignore_for_file: must_be_immutable

part of 'home_page_one_bloc.dart';

/// Represents the state of HomePageOne in the application.
class HomePageOneState extends Equatable {
  HomePageOneState({
    this.searchController,
    this.homePageOneModelObj,
  });

  TextEditingController? searchController;

  HomePageOneModel? homePageOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homePageOneModelObj,
      ];
  HomePageOneState copyWith({
    TextEditingController? searchController,
    HomePageOneModel? homePageOneModelObj,
  }) {
    return HomePageOneState(
      searchController: searchController ?? this.searchController,
      homePageOneModelObj: homePageOneModelObj ?? this.homePageOneModelObj,
    );
  }
}
