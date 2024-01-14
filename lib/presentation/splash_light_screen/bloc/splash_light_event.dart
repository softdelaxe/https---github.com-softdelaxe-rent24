// ignore_for_file: must_be_immutable

part of 'splash_light_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashLight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashLightEvent extends Equatable {}

/// Event that is dispatched when the SplashLight widget is first created.
class SplashLightInitialEvent extends SplashLightEvent {
  @override
  List<Object?> get props => [];
}
