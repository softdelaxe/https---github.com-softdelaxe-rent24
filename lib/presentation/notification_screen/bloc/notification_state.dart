// ignore_for_file: must_be_immutable

part of 'notification_bloc.dart';

/// Represents the state of Notification in the application.
class NotificationState extends Equatable {
  NotificationState({
    this.iconsaxBulkheadphoneController,
    this.notificationModelObj,
  });

  TextEditingController? iconsaxBulkheadphoneController;

  NotificationModel? notificationModelObj;

  @override
  List<Object?> get props => [
        iconsaxBulkheadphoneController,
        notificationModelObj,
      ];
  NotificationState copyWith({
    TextEditingController? iconsaxBulkheadphoneController,
    NotificationModel? notificationModelObj,
  }) {
    return NotificationState(
      iconsaxBulkheadphoneController:
          iconsaxBulkheadphoneController ?? this.iconsaxBulkheadphoneController,
      notificationModelObj: notificationModelObj ?? this.notificationModelObj,
    );
  }
}
