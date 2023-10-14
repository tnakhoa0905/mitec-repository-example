import 'package:flutter/material.dart';
import 'package:mitec/core/utils/image_constant.dart';
import 'package:mitec/core/utils/size_utils.dart';
import 'package:mitec/theme/app_decoration.dart';
import 'package:mitec/theme/theme_helper.dart';
import 'package:mitec/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:mitec/widgets/app_bar/appbar_image.dart';
import 'package:mitec/widgets/app_bar/appbar_searchview.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/widgets/custom_icon_button.dart';
import 'package:mitec/widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class BNScreen extends StatelessWidget {
  BNScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: 48.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray80001,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 13.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSearchview(
                    hintText: "Search", controller: searchController),
                actions: [
                  AppbarCircleimage1(
                      imagePath: ImageConstant.imgEllipse432x32,
                      margin: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 12.v))
                ]),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.gray100,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgBn),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 86.h, vertical: 35.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 70.v),
                          Container(
                              height: 139.adaptSize,
                              width: 139.adaptSize,
                              padding: EdgeInsets.all(50.h),
                              decoration: AppDecoration.outlineGreen.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder69),
                              child: CustomIconButton(
                                  height: 38.adaptSize,
                                  width: 38.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineBlueGrayTL19,
                                  alignment: Alignment.center,
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgFrameBlueGray900))),
                          Spacer(),
                          CustomElevatedButton(
                              width: 127.h,
                              text: "in bản đồ",
                              margin: EdgeInsets.only(right: 26.h),
                              alignment: Alignment.centerRight)
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
