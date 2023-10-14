import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/widgets/custom_floating_button.dart';
import 'package:mitec/widgets/custom_outlined_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CNgViCScreen extends StatelessWidget {
  CNgViCScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController joblocationoneController = TextEditingController();

  TextEditingController jobdescriptionController = TextEditingController();

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
            text: "công việc",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 28.v),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "tiêu đề",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 13.v),
                      CustomTextFormField(
                        controller: joblocationoneController,
                        hintText: "sửa hội trường A1",
                        hintStyle: theme.textTheme.titleMedium!,
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlueTL16,
                      ),
                      SizedBox(height: 9.v),
                      CustomTextFormField(
                        controller: jobdescriptionController,
                        hintText: "mô tả chi tiết công việc ...",
                        hintStyle:
                            CustomTextStyles.bodySmallOnSecondaryContainer,
                        textInputAction: TextInputAction.done,
                        maxLines: 5,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 23.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlueTL16,
                      ),
                      SizedBox(height: 12.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 15.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "bắt đầu",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  SizedBox(height: 13.v),
                                  CustomOutlinedButton(
                                    width: 148.h,
                                    text: "9:30 12/12/22",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "kết thúc",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  SizedBox(height: 13.v),
                                  CustomOutlinedButton(
                                    width: 148.h,
                                    text: "3:30 12/12/22",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "người thực hiện",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 10.v,
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse40x40,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  radius: BorderRadius.circular(
                                    20.h,
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Text(
                                  "Jeny",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                bottom: 2.v,
                              ),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse4,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "mehrin",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                bottom: 2.v,
                              ),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCheckmarkBlueA400,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "Avishek",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                bottom: 2.v,
                              ),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse5,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "Jafor",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 48.v,
          width: 218.h,
          text: "Save",
          margin: EdgeInsets.only(
            left: 78.h,
            right: 79.h,
            bottom: 30.v,
          ),
          buttonStyle: CustomButtonStyles.fillPrimary,
          buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16,
        ),
        floatingActionButton: CustomFloatingButton(
          height: 40,
          width: 40,
          backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          child: CustomImageView(
            svgPath: ImageConstant.imgPlusPrimary,
            height: 20.0.v,
            width: 20.0.h,
          ),
        ),
      ),
    );
  }
}
