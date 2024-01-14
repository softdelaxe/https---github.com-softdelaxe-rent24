// ignore_for_file: must_be_immutable

part of 'home_page_sidenav_bloc.dart';

/// Represents the state of HomePageSidenav in the application.
class HomePageSidenavState extends Equatable {
  HomePageSidenavState({this.homePageSidenavModelObj});

  HomePageSidenavModel? homePageSidenavModelObj;

  @override
  List<Object?> get props => [
        homePageSidenavModelObj,
      ];
  HomePageSidenavState copyWith(
      {HomePageSidenavModel? homePageSidenavModelObj}) {
    return HomePageSidenavState(
      homePageSidenavModelObj:
          homePageSidenavModelObj ?? this.homePageSidenavModelObj,
    );
  }
}
