import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class DanhSChMNNScreen extends StatelessWidget {
  DanhSChMNNScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 66.h,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgArrowdown,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 7.v,
              bottom: 7.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "danh sách món ăn",
          ),
          actions: [
            AppbarIconbutton3(
              svgPath: ImageConstant.imgPlus,
              margin: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 7.v,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "tìm kiếm món ăn",
                hintStyle: CustomTextStyles.titleSmallOnSecondaryContainer,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: 15.h,
                  ),
                  child: IconButton(
                    onPressed: () {
                      searchController.clear();
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 16.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAvatar48x48,
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            radius: BorderRadius.circular(
                              24.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                right: 2.h,
                                bottom: 5.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.green400,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                                border: Border.all(
                                  color: theme.colorScheme.onErrorContainer
                                      .withOpacity(1),
                                  width: 1.h,
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 5.v,
                        bottom: 3.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "gà xào xả ớt hiểm",
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "10k vnđ, 1kg, 10 người ăn, cay",
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 12.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.v),
              Divider(),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 15.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAvatar48x48,
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                radius: BorderRadius.circular(
                                  24.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                    right: 2.h,
                                    bottom: 5.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.green400,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.onErrorContainer
                                          .withOpacity(1),
                                      width: 1.h,
                                      strokeAlign: strokeAlignCenter,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 5.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "gà xào xả ớt hiểm",
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "10k vnđ, 1kg, 10 người ăn, cay",
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 12.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.v),
                    Divider(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 15.v,
                  bottom: 5.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAvatar48x48,
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                radius: BorderRadius.circular(
                                  24.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                    right: 2.h,
                                    bottom: 5.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.green400,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.onErrorContainer
                                          .withOpacity(1),
                                      width: 1.h,
                                      strokeAlign: strokeAlignCenter,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 5.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "gà xào xả ớt hiểm",
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "10k vnđ, 1kg, 10 người ăn, cay",
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 12.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.v),
                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
