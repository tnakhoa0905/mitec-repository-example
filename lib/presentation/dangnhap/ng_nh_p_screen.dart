import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class NgNhPScreen extends StatelessWidget {
  NgNhPScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            // width: double.maxFinite,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 16.v,
                    right: 24.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: 77.v,
                        leadingWidth: 66.h,
                        leading: AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowdown,
                          margin: EdgeInsets.only(left: 24.h),
                        ),
                        title: AppbarSubtitle(
                          text: "đăng nhập",
                          margin: EdgeInsets.only(left: 91.h),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgEllipse,
                        height: 49.v,
                        width: 64.h,
                        margin: EdgeInsets.only(top: 28.v),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mipec Palace",
                          style: CustomTextStyles
                              .headlineSmallOnSecondaryContainer,
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 211.h,
                          child: Text(
                            "Trung tâm Tiệc cưới & Hội nghị229 Tây Sơn, Đống Đa, HN",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBluegray40001_1
                                .copyWith(
                              height: 1.71,
                            ),
                          ),
                        ),
                        SizedBox(height: 39.v),
                        CustomTextFormField(
                          controller: emailController,
                          hintText: "email đăng nhập",
                          hintStyle: CustomTextStyles.titleMedium16,
                          textInputType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 30.v),
                        CustomTextFormField(
                          controller: passwordoneController,
                          hintText: "mật khẩu",
                          hintStyle: CustomTextStyles.bodyLargeBluegray40001,
                          textInputAction: TextInputAction.done,
                        ),
                        SizedBox(height: 13.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "quên mật khẩu?",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        CustomElevatedButton(
                          height: 57.v,
                          text: "nhân viên đăng nhập",
                          buttonStyle: CustomButtonStyles.none,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnErrorContainer16,
                        ),
                        const Spacer(),
                        SizedBox(height: 75.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Chi nhánh Công ty CP Hóa Dầu Quân Đội Hà Nội",
                            style: CustomTextStyles.bodyMediumBluegray40001,
                          ),
                        ),
                        SizedBox(height: 75.v),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
