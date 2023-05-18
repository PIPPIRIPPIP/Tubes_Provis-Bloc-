import 'bloc/notifikasi_bloc.dart';
import 'models/notifikasi_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:ayesha_s_application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NotifikasiScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotifikasiBloc>(
        create: (context) => NotifikasiBloc(
            NotifikasiState(notifikasiModelObj: NotifikasiModel()))
          ..add(NotifikasiInitialEvent()),
        child: NotifikasiScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotifikasiBloc, NotifikasiState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButton(
                            height: getVerticalSize(46),
                            text: "lbl_notifikasi".tr,
                            shape: ButtonShape.Square,
                            padding: ButtonPadding.PaddingT12,
                            fontStyle: ButtonFontStyle.PoppinsSemiBold14,
                            prefixWidget: Container(
                                margin: getMargin(right: 22),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgArrow4)),
                            onTap: () {
                              onTapNotifikasi(context);
                            }),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: getPadding(top: 9, right: 20),
                                child: Text("msg_bersihkan_notifikasi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium12))),
                        Padding(
                            padding: getPadding(top: 11),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray400)),
                        Container(
                            width: getHorizontalSize(348),
                            margin: getMargin(left: 17, top: 3, right: 48),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_pinjaman_terdanai".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#000000"),
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: "msg_pinjaman_yang_anda".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#000000"),
                                          fontSize: getFontSize(10),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "msg_05_april_2023_14_00".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#727272"),
                                          fontSize: getFontSize(8),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.left)),
                        Padding(
                            padding: getPadding(top: 3),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray400)),
                        Container(
                            width: getHorizontalSize(355),
                            margin: getMargin(left: 17, top: 5, right: 41),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_sukses_mengajukan2".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#000000"),
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: "msg_pinjaman_sukses".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#000000"),
                                          fontSize: getFontSize(10),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "msg_05_april_2023_14_00".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#727272"),
                                          fontSize: getFontSize(8),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.left)),
                        Padding(
                            padding: getPadding(top: 4),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray400)),
                        Container(
                            width: getHorizontalSize(354),
                            margin: getMargin(left: 17, top: 4, right: 42),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_tenggat_pembayaran".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#000000"),
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: "msg_tagihan_anda_untuk".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#000000"),
                                          fontSize: getFontSize(10),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "msg_05_april_2023_14_00".tr,
                                      style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#727272"),
                                          fontSize: getFontSize(8),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.left)),
                        Padding(
                            padding: getPadding(top: 4, bottom: 5),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray400))
                      ]))));
    });
  }

  onTapNotifikasi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.peminjamScreen,
    );
  }
}
