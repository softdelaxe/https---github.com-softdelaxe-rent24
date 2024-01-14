import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/home_page_sidenav_draweritem/models/home_page_sidenav_model.dart';
part 'home_page_sidenav_event.dart';
part 'home_page_sidenav_state.dart';

/// A bloc that manages the state of a HomePageSidenav according to the event that is dispatched to it.
class HomePageSidenavBloc
    extends Bloc<HomePageSidenavEvent, HomePageSidenavState> {
  HomePageSidenavBloc(HomePageSidenavState initialState) : super(initialState) {
    on<HomePageSidenavInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageSidenavInitialEvent event,
    Emitter<HomePageSidenavState> emit,
  ) async {}
}
