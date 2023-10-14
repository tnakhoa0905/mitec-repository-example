import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/custom_icon_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ThMKhuyNMIBottomsheet extends StatelessWidget {
  ThMKhuyNMIBottomsheet({Key? key}) : super(key: key);

  TextEditingController permissiononeController = TextEditingController();

  TextEditingController pushnotificatioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
        decoration: AppDecoration.fillOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Container(
                  height: 4.v,
                  width: 42.h,
                  decoration: BoxDecoration(
                      color: appTheme.blue50,
                      borderRadius: BorderRadius.circular(2.h))),
              CustomTextFormField(
                  controller: permissiononeController,
                  hintText: "bánh kem",
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCameraPrimary)),
                  suffixConstraints: BoxConstraints(maxHeight: 55.v),
                  contentPadding:
                      EdgeInsets.only(left: 18.h, top: 15.v, bottom: 15.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueTL12),
              SizedBox(height: 22.v),
              CustomTextFormField(
                  controller: pushnotificatioController,
                  hintText: "rượu",
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCameraBlueGray10001)),
                  suffixConstraints: BoxConstraints(maxHeight: 55.v),
                  contentPadding:
                      EdgeInsets.only(left: 18.h, top: 15.v, bottom: 15.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueTL12),
              SizedBox(height: 193.v),
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.outlineBlueTL211,
                  onTap: () {
                    onTapBtnCloseone(context);
                  },
                  child: CustomImageView(svgPath: ImageConstant.imgClose))
            ]));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
