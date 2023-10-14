import 'package:flutter/material.dart';
import 'package:mitec/presentation/danh_s_ch_kh_ch_h_ng_screen/danh_s_ch_kh_ch_h_ng_screen.dart';
import 'package:mitec/presentation/dangnhap/ng_nh_p_screen.dart';
import 'package:mitec/presentation/t_o_t_i_kho_n_screen/t_o_t_i_kho_n_screen.dart';
import 'package:mitec/presentation/nhanvien/nh_n_vi_n_screen.dart';
import 'package:mitec/presentation/settings_screen/settings_screen.dart';
import 'package:mitec/presentation/c_nh_n_screen/c_nh_n_screen.dart';
import 'package:mitec/presentation/b_o_c_o_c_ng_vi_c_screen/b_o_c_o_c_ng_vi_c_screen.dart';
import 'package:mitec/presentation/c_ng_vi_c_trong_th_ng_screen/c_ng_vi_c_trong_th_ng_screen.dart';
import 'package:mitec/presentation/c_ng_vi_c_h_m_nay_screen/c_ng_vi_c_h_m_nay_screen.dart';
import 'package:mitec/presentation/c_ng_vi_c_screen/c_ng_vi_c_screen.dart';
import 'package:mitec/presentation/th_m_nh_n_s_screen/th_m_nh_n_s_screen.dart';
import 'package:mitec/presentation/danh_s_ch_trung_t_m_screen/danh_s_ch_trung_t_m_screen.dart';
import 'package:mitec/presentation/kh_ch_h_ng_screen/kh_ch_h_ng_screen.dart';
import 'package:mitec/presentation/danh_s_ch_ti_c_one_screen/danh_s_ch_ti_c_one_screen.dart';
import 'package:mitec/presentation/th_ng_tin_ti_c_screen/th_ng_tin_ti_c_screen.dart';
import 'package:mitec/presentation/danh_s_ch_ti_c_theo_ng_y_screen/danh_s_ch_ti_c_theo_ng_y_screen.dart';
import 'package:mitec/presentation/th_c_n_one_screen/th_c_n_one_screen.dart';
import 'package:mitec/presentation/nguy_n_li_u_screen/nguy_n_li_u_screen.dart';
import 'package:mitec/presentation/danh_s_ch_nguy_n_li_u_screen/danh_s_ch_nguy_n_li_u_screen.dart';
import 'package:mitec/presentation/m_n_n_screen/m_n_n_screen.dart';
import 'package:mitec/presentation/danh_s_ch_m_n_n_screen/danh_s_ch_m_n_n_screen.dart';
import 'package:mitec/presentation/danh_s_ch_ti_c_screen/danh_s_ch_ti_c_screen.dart';
import 'package:mitec/presentation/th_c_n_screen/th_c_n_screen.dart';
import 'package:mitec/presentation/b_o_c_o_screen/b_o_c_o_screen.dart';
import 'package:mitec/presentation/b_n_screen/b_n_screen.dart';
import 'package:mitec/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String danhSChKhChHNgScreen = '/danh_s_ch_kh_ch_h_ng_screen';

  static const String ngNhPScreen = '/ng_nh_p_screen';

  static const String tOTIKhoNScreen = '/t_o_t_i_kho_n_screen';

  static const String nhNViNScreen = '/nh_n_vi_n_screen';

  static const String settingsScreen = '/settings_screen';

  static const String cNhNScreen = '/c_nh_n_screen';

  static const String bOCOCNgViCScreen = '/b_o_c_o_c_ng_vi_c_screen';

  static const String cNgViCTrongThNgScreen = '/c_ng_vi_c_trong_th_ng_screen';

  static const String cNgViCHMNayScreen = '/c_ng_vi_c_h_m_nay_screen';

  static const String cNgViCScreen = '/c_ng_vi_c_screen';

  static const String thMNhNSScreen = '/th_m_nh_n_s_screen';

  static const String danhSChTrungTMScreen = '/danh_s_ch_trung_t_m_screen';

  static const String khChHNgScreen = '/kh_ch_h_ng_screen';

  static const String danhSChTiCOneScreen = '/danh_s_ch_ti_c_one_screen';

  static const String thNgTinTiCScreen = '/th_ng_tin_ti_c_screen';

  static const String danhSChTiCTheoNgYScreen =
      '/danh_s_ch_ti_c_theo_ng_y_screen';

  static const String thCNOneScreen = '/th_c_n_one_screen';

  static const String nguyNLiUScreen = '/nguy_n_li_u_screen';

  static const String danhSChNguyNLiUScreen = '/danh_s_ch_nguy_n_li_u_screen';

  static const String mNNScreen = '/m_n_n_screen';

  static const String danhSChMNNScreen = '/danh_s_ch_m_n_n_screen';

  static const String danhSChTiCScreen = '/danh_s_ch_ti_c_screen';

  static const String thCNScreen = '/th_c_n_screen';

  static const String bOCOScreen = '/b_o_c_o_screen';

  static const String bNScreen = '/b_n_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    danhSChKhChHNgScreen: (context) => DanhSChKhChHNgScreen(),
    ngNhPScreen: (context) => NgNhPScreen(),
    tOTIKhoNScreen: (context) => TOTIKhoNScreen(),
    nhNViNScreen: (context) => NhNViNScreen(),
    settingsScreen: (context) => SettingsScreen(),
    cNhNScreen: (context) => CNhNScreen(),
    bOCOCNgViCScreen: (context) => BOCOCNgViCScreen(),
    cNgViCTrongThNgScreen: (context) => CNgViCTrongThNgScreen(),
    cNgViCHMNayScreen: (context) => CNgViCHMNayScreen(),
    cNgViCScreen: (context) => CNgViCScreen(),
    thMNhNSScreen: (context) => ThMNhNSScreen(),
    danhSChTrungTMScreen: (context) => DanhSChTrungTMScreen(),
    khChHNgScreen: (context) => KhChHNgScreen(),
    danhSChTiCOneScreen: (context) => DanhSChTiCOneScreen(),
    thNgTinTiCScreen: (context) => ThNgTinTiCScreen(),
    danhSChTiCTheoNgYScreen: (context) => DanhSChTiCTheoNgYScreen(),
    thCNOneScreen: (context) => ThCNOneScreen(),
    nguyNLiUScreen: (context) => NguyNLiUScreen(),
    danhSChNguyNLiUScreen: (context) => DanhSChNguyNLiUScreen(),
    mNNScreen: (context) => MNNScreen(),
    danhSChMNNScreen: (context) => DanhSChMNNScreen(),
    danhSChTiCScreen: (context) => DanhSChTiCScreen(),
    thCNScreen: (context) => ThCNScreen(),
    bOCOScreen: (context) => BOCOScreen(),
    bNScreen: (context) => BNScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
