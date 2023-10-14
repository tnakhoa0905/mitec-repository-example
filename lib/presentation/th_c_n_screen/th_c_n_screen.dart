import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_icon_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ThCNScreen extends StatelessWidget {
  ThCNScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController ghichthmoneController = TextEditingController();

  TextEditingController ghichthmthreeController = TextEditingController();

  TextEditingController listingredientsController = TextEditingController();

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
            text: "thực đơn",
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar,
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
                        padding: EdgeInsets.symmetric(vertical: 4.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tiệc T001 - sảnh A1 - 12/12/2022",
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "khách Lò Bát Quái 0901020304",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
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
              CustomTextFormField(
                controller: ghichthmoneController,
                margin: EdgeInsets.only(
                  top: 15.v,
                  right: 2.h,
                ),
                hintText: "tạm tính : 10tr, giá cuối : 9tr",
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(20.h, 16.v, 12.h, 16.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 30.h,
                  bottom: 16.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL12,
              ),
              CustomTextFormField(
                controller: ghichthmthreeController,
                margin: EdgeInsets.only(
                  top: 16.v,
                  right: 2.h,
                ),
                hintText: "giá thành : 6tr",
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(20.h, 16.v, 12.h, 16.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 30.h,
                  bottom: 16.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL12,
              ),
              CustomTextFormField(
                controller: listingredientsController,
                margin: EdgeInsets.only(
                  top: 16.v,
                  right: 2.h,
                ),
                hintText: "in danh sách nguyên vật liệu",
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(20.h, 16.v, 12.h, 16.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 30.h,
                  bottom: 16.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL12,
              ),
              CustomIconButton(
                height: 28.adaptSize,
                width: 28.adaptSize,
                margin: EdgeInsets.only(
                  top: 72.v,
                  right: 2.h,
                ),
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.outlineGrayATL14,
                child: CustomImageView(
                  svgPath: ImageConstant.imgPlus,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  right: 2.h,
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
                                "10 phần, thành tiền xxx, ghi chú : không",
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 30.h,
                            top: 12.v,
                            bottom: 12.v,
                          ),
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
                  top: 15.v,
                  right: 2.h,
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
                  top: 15.v,
                  right: 2.h,
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
