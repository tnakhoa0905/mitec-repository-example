import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/custom_icon_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChTGiTiNBottomsheet extends StatelessWidget {
  ChTGiTiNBottomsheet({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Container(
                  height: 4.v,
                  width: 42.h,
                  decoration: BoxDecoration(
                      color: appTheme.blue50,
                      borderRadius: BorderRadius.circular(2.h))),
              SizedBox(height: 13.v),
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
              SizedBox(height: 173.v),
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
