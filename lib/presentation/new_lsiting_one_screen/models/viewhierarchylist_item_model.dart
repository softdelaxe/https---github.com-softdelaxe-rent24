import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({
    this.duplexHouseImage,
    this.duplexHouseText,
    this.stFaithEkeAwkaText,
    this.reviewText,
    this.id,
  }) {
    duplexHouseImage = duplexHouseImage ?? ImageConstant.imgRectangle71;
    duplexHouseText = duplexHouseText ?? "Duplex House";
    stFaithEkeAwkaText = stFaithEkeAwkaText ?? "St faith Eke-awka";
    reviewText = reviewText ?? "5.1 (115 Reviews)";
    id = id ?? "";
  }

  String? duplexHouseImage;

  String? duplexHouseText;

  String? stFaithEkeAwkaText;

  String? reviewText;

  String? id;
}
