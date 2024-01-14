import '../../../core/app_export.dart';/// This class is used in the [notificationcardlist_item_widget] screen.
class NotificationcardlistItemModel {NotificationcardlistItemModel({this.userImage, this.notificationText, this.timeAgo, this.id, }) { userImage = userImage  ?? ImageConstant.imgEllipse7;notificationText = notificationText  ?? "John Doe requested for a rent on\nyour post ";timeAgo = timeAgo  ?? "20mins ago";id = id  ?? ""; }

String? userImage;

String? notificationText;

String? timeAgo;

String? id;

 }
