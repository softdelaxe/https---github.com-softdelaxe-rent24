import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationcardlist_item_model.dart';
import 'package:rent24/presentation/notification_one_page/models/notification_one_model.dart';
part 'notification_one_event.dart';
part 'notification_one_state.dart';

/// A bloc that manages the state of a NotificationOne according to the event that is dispatched to it.
class NotificationOneBloc
    extends Bloc<NotificationOneEvent, NotificationOneState> {
  NotificationOneBloc(NotificationOneState initialState) : super(initialState) {
    on<NotificationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationOneInitialEvent event,
    Emitter<NotificationOneState> emit,
  ) async {
    emit(state.copyWith(
        notificationOneModelObj: state.notificationOneModelObj?.copyWith(
      notificationcardlistItemList: fillNotificationcardlistItemList(),
    )));
  }

  List<NotificationcardlistItemModel> fillNotificationcardlistItemList() {
    return [
      NotificationcardlistItemModel(
          userImage: ImageConstant.imgEllipse7,
          notificationText: "John Doe requested for a rent on\nyour post ",
          timeAgo: "20mins ago"),
      NotificationcardlistItemModel(
          userImage: ImageConstant.imgEllipse770x70,
          notificationText: "John Doe requested for a rent on\nyour post ",
          timeAgo: "20mins ago"),
      NotificationcardlistItemModel(
          userImage: ImageConstant.imgEllipse71,
          notificationText: "John Doe requested for a rent on\nyour post ",
          timeAgo: "20mins ago")
    ];
  }
}
