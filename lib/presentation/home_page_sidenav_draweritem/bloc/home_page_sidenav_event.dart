// ignore_for_file: must_be_immutable

part of 'home_page_sidenav_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageSidenav widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageSidenavEvent extends Equatable {}

/// Event that is dispatched when the HomePageSidenav widget is first created.
class HomePageSidenavInitialEvent extends HomePageSidenavEvent {
  @override
  List<Object?> get props => [];
}
