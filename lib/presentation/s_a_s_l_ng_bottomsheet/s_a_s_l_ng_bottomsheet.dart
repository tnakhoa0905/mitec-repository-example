import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/custom_icon_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SASLNgBottomsheet extends StatelessWidget {
  SASLNgBottomsheet({Key? key}) : super(key: key);

  TextEditingController slng10conController = TextEditingController();

  TextEditingController thnhtin10Controller = TextEditingController();

  TextEditingController gicui9trController = TextEditingController();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 4.v,
                      width: 42.h,
                      decoration: BoxDecoration(
                          color: appTheme.blue50,
                          borderRadius: BorderRadius.circular(2.h)))),
              SizedBox(height: 13.v),
              Text("gà xào xả ớt lá lanh chanh",
                  style: CustomTextStyles.titleMediumInterBluegray700),
              SizedBox(height: 9.v),
              Text("đơn giá : 100k, đơn vị tính : con",
                  style: CustomTextStyles.bodyMediumInterBluegray700),
              SizedBox(height: 9.v),
              CustomTextFormField(
                  controller: slng10conController,
                  hintText: "số lượng : 10 con",
                  hintStyle: CustomTextStyles.bodyLargeBluegray400_1),
              SizedBox(height: 34.v),
              CustomTextFormField(
                  controller: thnhtin10Controller,
                  hintText: "thành tiền : 10 tr",
                  hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueTL161,
                  fillColor: appTheme.gray20002),
              SizedBox(height: 17.v),
              CustomTextFormField(
                  controller: gicui9trController,
                  hintText: "giá cuối : 9tr",
                  hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                  textInputAction: TextInputAction.done),
              SizedBox(height: 19.v),
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.outlineBlueTL211,
                  alignment: Alignment.center,
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
