// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'notificationcardlist_item_model.dart';/// This class defines the variables used in the [notification_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationOneModel extends Equatable {NotificationOneModel({this.notificationcardlistItemList = const []}) {  }

List<NotificationcardlistItemModel> notificationcardlistItemList;

NotificationOneModel copyWith({List<NotificationcardlistItemModel>? notificationcardlistItemList}) { return NotificationOneModel(
notificationcardlistItemList : notificationcardlistItemList ?? this.notificationcardlistItemList,
); } 
@override List<Object?> get props => [notificationcardlistItemList];
 }
