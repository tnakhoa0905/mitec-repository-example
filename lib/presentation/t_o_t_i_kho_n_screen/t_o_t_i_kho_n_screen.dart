import '../t_o_t_i_kho_n_screen/widgets/chipviewurgent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class TOTIKhoNScreen extends StatelessWidget {
  TOTIKhoNScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController employeenameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController initialpasswordController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomAppBar(
                              height: 42.v,
                              leadingWidth: 66.h,
                              leading: AppbarIconbutton(
                                svgPath: ImageConstant.imgArrowdown,
                                margin: EdgeInsets.only(left: 24.h),
                              ),
                              centerTitle: true,
                              title: AppbarSubtitle(
                                text: "tạo mới nhân viên",
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Text(
                              "tạo tài khoản",
                              style: CustomTextStyles
                                  .headlineSmallOnSecondaryContainer,
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgEllipseBlue200,
                        height: 49.v,
                        width: 64.h,
                        margin: EdgeInsets.only(
                          left: 17.h,
                          top: 28.v,
                          bottom: 37.v,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 244.h,
                          margin: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "chỉ admin được quyền tạo mới tài khoản nhân viên, nhân viên cần đổi mật khẩu ban đầu ngay sau khi tạo",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBluegray40001_1
                                .copyWith(
                              height: 1.71,
                            ),
                          ),
                        ),
                      ),
                      CustomTextFormField(
                        controller: employeenameController,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          top: 15.v,
                          right: 24.h,
                        ),
                        hintText: "tên nhân viên",
                        hintStyle: CustomTextStyles.titleMedium16,
                      ),
                      CustomTextFormField(
                        controller: emailController,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          top: 30.v,
                          right: 24.h,
                        ),
                        hintText: "email nhân viên",
                        hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                        textInputType: TextInputType.emailAddress,
                      ),
                      CustomTextFormField(
                        controller: initialpasswordController,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          top: 30.v,
                          right: 24.h,
                        ),
                        hintText: "mật khẩu ban đầu",
                        hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                      ),
                      CustomTextFormField(
                        controller: phonenumberoneController,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          top: 16.v,
                          right: 24.h,
                        ),
                        hintText: "số điện thoại",
                        hintStyle: CustomTextStyles.bodyLargeBluegray400_1,
                        textInputAction: TextInputAction.done,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
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
                              3, (index) => const ChipviewurgentItemWidget()),
                        ),
                      ),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 54.v,
          text: "tạo nhân viên",
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 41.v,
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16,
        ),
      ),
    );
  }
}
