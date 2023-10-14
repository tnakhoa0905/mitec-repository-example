import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class NguyNLiUScreen extends StatelessWidget {
  NguyNLiUScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController materialaliasController = TextEditingController();

  TextEditingController materialunitController = TextEditingController();

  TextEditingController materialsupplieController = TextEditingController();

  TextEditingController materialpriceController = TextEditingController();

  TextEditingController materialnoteController = TextEditingController();

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
            text: "nguyên vật liệu",
          ),
          actions: [
            AppbarSubtitle2(
              text: "lưu",
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 30.h, 18.v),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "ID : VT00001",
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              ),
              CustomTextFormField(
                controller: materialaliasController,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 11.v,
                ),
                hintText: "tên gọi",
                hintStyle: CustomTextStyles.titleMedium16,
              ),
              CustomTextFormField(
                controller: materialunitController,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 30.v,
                ),
                hintText: "đơn vị tính",
                hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
              ),
              CustomTextFormField(
                controller: materialsupplieController,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 30.v,
                ),
                hintText: "nhà cung cấp",
                hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
              ),
              CustomTextFormField(
                controller: materialpriceController,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 16.v,
                ),
                hintText: "giá tạm tính",
                hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
              ),
              CustomTextFormField(
                controller: materialnoteController,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 16.v,
                  bottom: 5.v,
                ),
                hintText: "ghi chú",
                hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                textInputAction: TextInputAction.done,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 54.v,
          text: "xóa",
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 41.v,
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer,
        ),
      ),
    );
  }
}
