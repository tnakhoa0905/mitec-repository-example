import '../nhanvien/widgets/chipviewurgent2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/widgets/custom_icon_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class NhNViNScreen extends StatelessWidget {
  NhNViNScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController tnnhnvinController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController imtkhuController = TextEditingController();

  TextEditingController sinthoiController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            text: "nhân sự",
          ),
          actions: [
            AppbarSubtitle2(
              text: "lưu",
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 30.h, 18.v),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 11.v),
            child: Column(
              children: [
                SizedBox(height: 22.v),
                SizedBox(
                  height: 132.adaptSize,
                  width: 132.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgProlile,
                        height: 132.adaptSize,
                        width: 132.adaptSize,
                        radius: BorderRadius.circular(
                          66.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 132.adaptSize,
                          width: 132.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillBlueA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder66,
                          ),
                          child: CustomIconButton(
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration:
                                IconButtonStyleHelper.outlineOnErrorContainer,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCameraOnerrorcontainer,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  controller: tnnhnvinController,
                  margin: EdgeInsets.only(
                    left: 26.h,
                    top: 30.v,
                    right: 22.h,
                  ),
                  hintText: "tên nhân viên",
                  hintStyle: CustomTextStyles.titleMedium16,
                ),
                CustomTextFormField(
                  controller: emailController,
                  margin: EdgeInsets.only(
                    left: 26.h,
                    top: 30.v,
                    right: 22.h,
                  ),
                  hintText: "email nhân viên",
                  hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                  textInputType: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  controller: imtkhuController,
                  margin: EdgeInsets.only(
                    left: 26.h,
                    top: 30.v,
                    right: 22.h,
                  ),
                  hintText: "đổi mật khẩu",
                  hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                ),
                CustomTextFormField(
                  controller: sinthoiController,
                  margin: EdgeInsets.only(
                    left: 26.h,
                    top: 16.v,
                    right: 22.h,
                  ),
                  hintText: "số điện thoại",
                  hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                  textInputAction: TextInputAction.done,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      top: 13.v,
                    ),
                    child: Text(
                      "phòng ban",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    runSpacing: 17.v,
                    spacing: 17.h,
                    children: List<Widget>.generate(
                        3, (index) => Chipviewurgent2ItemWidget()),
                  ),
                ),
              ],
            ),
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
