import 'package:flutter/material.dart';
import 'package:mitec/core/utils/size_utils.dart';
import 'package:mitec/presentation/th_m_khuy_n_m_i_bottomsheet/th_m_khuy_n_m_i_bottomsheet.dart';
import 'package:mitec/presentation/ch_n_ng_y_bottomsheet/ch_n_ng_y_bottomsheet.dart';
import 'package:mitec/presentation/ch_n_s_nh_bottomsheet/ch_n_s_nh_bottomsheet.dart';
import 'package:mitec/presentation/ch_t_gi_ti_n_bottomsheet/ch_t_gi_ti_n_bottomsheet.dart';
import 'package:mitec/presentation/s_a_s_l_ng_bottomsheet/s_a_s_l_ng_bottomsheet.dart';
import 'package:mitec/routes/app_routes.dart';
import 'package:mitec/theme/app_decoration.dart';
import 'package:mitec/theme/theme_helper.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillOnErrorContainer,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v),
                                child: Text("App Navigation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: 20.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                    "Check your app's UI from the below demo screens of your app.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.blueGray40002,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 5.v),
                        Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.black900)
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillOnErrorContainer,
                              child: Column(children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapDanhschkhchhng(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "danh sách khách hàng",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapNgnhp(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("đăng nhập",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTotikhon(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("tạo tài khoản",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapNhnvin(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("nhân viên",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSettings(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("settings",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCnhn(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("cá nhân",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBococngvic(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "báo cáo công việc",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCngvictrongthng(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "công việc trong tháng",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCngvichmnay(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "công việc hôm nay",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCngvic(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("công việc",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapThmnhns(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("thêm nhân sự",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDanhschtrungtm(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "danh sách trung tâm",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapKhchhng(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("khách hàng",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDanhschticOne(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "danh sách tiệc One",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapThngtintic(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("thông tin tiệc",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapThmkhuynmi(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("thêm khuyến mãi",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDanhschtictheongy(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "danh sách tiệc theo ngày",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapChnngy(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("chọn ngày",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapChnsnh(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("chọn sảnh",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapThcnOne(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("thực đơn One",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapChtgitin(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("chốt giá tiền",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSaslng(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("sửa số lượng",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapNguynliu(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("nguyên liệu",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDanhschnguynliu(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "danh sách nguyên liệu",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapMnn(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("món ăn",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDanhschmnn(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "danh sách món ăn",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDanhschtic(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("danh sách tiệc",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapThcn(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("thực đơn",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBoco(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("báo cáo",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBn(context);
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnErrorContainer,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("bản đồ",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ])))
                              ]))))
                ]))));
  }

  /// Navigates to the danhSChKhChHNgScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the danhSChKhChHNgScreen.
  onTapDanhschkhchhng(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChKhChHNgScreen);
  }

  /// Navigates to the ngNhPScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the ngNhPScreen.
  onTapNgnhp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ngNhPScreen);
  }

  /// Navigates to the tOTIKhoNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tOTIKhoNScreen.
  onTapTotikhon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tOTIKhoNScreen);
  }

  /// Navigates to the nhNViNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nhNViNScreen.
  onTapNhnvin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nhNViNScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the settingsScreen.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the cNhNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cNhNScreen.
  onTapCnhn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cNhNScreen);
  }

  /// Navigates to the bOCOCNgViCScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bOCOCNgViCScreen.
  onTapBococngvic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bOCOCNgViCScreen);
  }

  /// Navigates to the cNgViCTrongThNgScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cNgViCTrongThNgScreen.
  onTapCngvictrongthng(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cNgViCTrongThNgScreen);
  }

  /// Navigates to the cNgViCHMNayScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cNgViCHMNayScreen.
  onTapCngvichmnay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cNgViCHMNayScreen);
  }

  /// Navigates to the cNgViCScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cNgViCScreen.
  onTapCngvic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cNgViCScreen);
  }

  /// Navigates to the thMNhNSScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the thMNhNSScreen.
  onTapThmnhns(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thMNhNSScreen);
  }

  /// Navigates to the danhSChTrungTMScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the danhSChTrungTMScreen.
  onTapDanhschtrungtm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChTrungTMScreen);
  }

  /// Navigates to the khChHNgScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the khChHNgScreen.
  onTapKhchhng(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.khChHNgScreen);
  }

  /// Navigates to the danhSChTiCOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the danhSChTiCOneScreen.
  onTapDanhschticOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChTiCOneScreen);
  }

  /// Navigates to the thNgTinTiCScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the thNgTinTiCScreen.
  onTapThngtintic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thNgTinTiCScreen);
  }

  /// Shows a modal bottom sheet with [ThMKhuyNMIBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapThmkhuynmi(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ThMKhuyNMIBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the danhSChTiCTheoNgYScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the danhSChTiCTheoNgYScreen.
  onTapDanhschtictheongy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChTiCTheoNgYScreen);
  }

  /// Shows a modal bottom sheet with [ChNNgYBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapChnngy(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChNNgYBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [ChNSNhBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapChnsnh(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChNSNhBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the thCNOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the thCNOneScreen.
  onTapThcnOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thCNOneScreen);
  }

  /// Shows a modal bottom sheet with [ChTGiTiNBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapChtgitin(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChTGiTiNBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [SASLNgBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSaslng(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => SASLNgBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the nguyNLiUScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nguyNLiUScreen.
  onTapNguynliu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nguyNLiUScreen);
  }

  /// Navigates to the danhSChNguyNLiUScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the danhSChNguyNLiUScreen.
  onTapDanhschnguynliu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChNguyNLiUScreen);
  }

  /// Navigates to the mNNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the mNNScreen.
  onTapMnn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mNNScreen);
  }

  /// Navigates to the danhSChMNNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the danhSChMNNScreen.
  onTapDanhschmnn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChMNNScreen);
  }

  /// Navigates to the danhSChTiCScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the danhSChTiCScreen.
  onTapDanhschtic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChTiCScreen);
  }

  /// Navigates to the thCNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the thCNScreen.
  onTapThcn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thCNScreen);
  }

  /// Navigates to the bOCOScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bOCOScreen.
  onTapBoco(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bOCOScreen);
  }

  /// Navigates to the bNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bNScreen.
  onTapBn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bNScreen);
  }
}
