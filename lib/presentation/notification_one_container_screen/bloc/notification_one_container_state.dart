// ignore_for_file: must_be_immutable

part of 'notification_one_container_bloc.dart';

/// Represents the state of NotificationOneContainer in the application.
class NotificationOneContainerState extends Equatable {
  NotificationOneContainerState({this.notificationOneContainerModelObj});

  NotificationOneContainerModel? notificationOneContainerModelObj;

  @override
  List<Object?> get props => [
        notificationOneContainerModelObj,
      ];
  NotificationOneContainerState copyWith(
      {NotificationOneContainerModel? notificationOneContainerModelObj}) {
    return NotificationOneContainerState(
      notificationOneContainerModelObj: notificationOneContainerModelObj ??
          this.notificationOneContainerModelObj,
    );
  }
}
