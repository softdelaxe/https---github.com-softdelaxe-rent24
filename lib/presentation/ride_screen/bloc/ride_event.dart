// ignore_for_file: must_be_immutable

part of 'ride_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ride widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RideEvent extends Equatable {}

/// Event that is dispatched when the Ride widget is first created.
class RideInitialEvent extends RideEvent {
  @override
  List<Object?> get props => [];
}
