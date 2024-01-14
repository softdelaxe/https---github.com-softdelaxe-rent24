import '../new_lsiting_one_screen/widgets/viewhierarchylist_item_widget.dart';
import 'bloc/new_lsiting_one_bloc.dart';
import 'models/new_lsiting_one_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';
import 'package:rent24/widgets/custom_icon_button.dart';
import 'package:rent24/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class NewLsitingOneScreen extends StatelessWidget {
  NewLsitingOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NewLsitingOneBloc>(
        create: (context) => NewLsitingOneBloc(
            NewLsitingOneState(newLsitingOneModelObj: NewLsitingOneModel()))
          ..add(NewLsitingOneInitialEvent()),
        child: NewLsitingOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_favorites".tr,
                              style:
                                  CustomTextStyles.headlineSmallBluegray900))),
                  SizedBox(height: 13.v),
                  _buildSearchRow(context),
                  SizedBox(height: 25.v),
                  _buildViewHierarchyList(context),
                  SizedBox(height: 87.v),
                  Container(
                      height: 80.v,
                      width: 70.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 16.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup67),
                              fit: BoxFit.cover)),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIconsaxLinearAdd,
                          height: 45.adaptSize,
                          width: 45.adaptSize,
                          alignment: Alignment.bottomCenter))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: BlocSelector<NewLsitingOneBloc, NewLsitingOneState,
                  TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_search_product_or".tr);
              })),
      Padding(
          padding: EdgeInsets.only(left: 13.h),
          child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              onTap: () {
                onTapBtnIconsaxOutline(context);
              },
              child:
                  CustomImageView(imagePath: ImageConstant.imgIconsaxOutline)))
    ]);
  }

  /// Section Widget
  Widget _buildViewHierarchyList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: BlocSelector<NewLsitingOneBloc, NewLsitingOneState,
                NewLsitingOneModel?>(
            selector: (state) => state.newLsitingOneModelObj,
            builder: (context, newLsitingOneModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 25.v);
                  },
                  itemCount:
                      newLsitingOneModelObj?.viewhierarchylistItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    ViewhierarchylistItemModel model = newLsitingOneModelObj
                            ?.viewhierarchylistItemList[index] ??
                        ViewhierarchylistItemModel();
                    return ViewhierarchylistItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconsaxoutlinehome2:
        return AppRoutes.notificationOnePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneheart:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneprofile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.notificationOnePage:
        return NotificationOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the callToActionOneScreen when the action is triggered.
  onTapBtnIconsaxOutline(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.callToActionOneScreen,
    );
  }
}
