import 'bloc/riwayat_transaksi_peminjam_bloc.dart';
import 'models/riwayat_transaksi_peminjam_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:ayesha_s_application3/widgets/custom_button.dart';
import 'package:ayesha_s_application3/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class RiwayatTransaksiPeminjamScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RiwayatTransaksiPeminjamBloc>(
        create: (context) => RiwayatTransaksiPeminjamBloc(
            RiwayatTransaksiPeminjamState(
                riwayatTransaksiPeminjamModelObj:
                    RiwayatTransaksiPeminjamModel()))
          ..add(RiwayatTransaksiPeminjamInitialEvent()),
        child: RiwayatTransaksiPeminjamScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "msg_riwayat_transaksi".tr,
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingT12,
                          fontStyle: ButtonFontStyle.PoppinsSemiBold14,
                          prefixWidget: Container(
                              margin: getMargin(right: 22),
                              decoration:
                                  BoxDecoration(color: ColorConstant.whiteA700),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrow4)),
                          onTap: () {
                            onTapRiwayat(context);
                          }),
                      Padding(
                          padding: getPadding(left: 17, top: 15, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 12, bottom: 8),
                                    child: Text("msg_riwayat_transaksi".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium14)),
                                BlocSelector<
                                        RiwayatTransaksiPeminjamBloc,
                                        RiwayatTransaksiPeminjamState,
                                        RiwayatTransaksiPeminjamModel?>(
                                    selector: (state) =>
                                        state.riwayatTransaksiPeminjamModelObj,
                                    builder: (context,
                                        riwayatTransaksiPeminjamModelObj) {
                                      return CustomDropDown(
                                          width: getHorizontalSize(128),
                                          focusNode: FocusNode(),
                                          icon: Container(
                                              margin: getMargin(
                                                  left: 16, right: 29),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray90001),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowdownGray90001)),
                                          hintText: "lbl_filter".tr,
                                          items:
                                              riwayatTransaksiPeminjamModelObj
                                                      ?.dropdownItemList ??
                                                  [],
                                          onChanged: (value) {
                                            context
                                                .read<
                                                    RiwayatTransaksiPeminjamBloc>()
                                                .add(ChangeDropDownEvent(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 17, top: 5, right: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(96),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_bayar_pinjaman".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "msg_via_bca_05_april".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Padding(
                                    padding: getPadding(top: 18, bottom: 18),
                                    child: Text("lbl_rp_100_000".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12DeeporangeA700))
                              ])),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 17, top: 5, right: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(76),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_isi_saldo2".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "msg_via_bca_04_april".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Padding(
                                    padding: getPadding(top: 18, bottom: 18),
                                    child: Text("lbl_rp_100_0002".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12Green800))
                              ])),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 17, top: 6, right: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(76),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_tarik_dana".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "msg_via_bca_03_april".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Padding(
                                    padding: getPadding(top: 18, bottom: 18),
                                    child: Text("lbl_rp_5_000_000".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12DeeporangeA700))
                              ])),
                      Padding(
                          padding: getPadding(top: 5),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 17, top: 3, right: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(82),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_pendanaan".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "lbl_p200723123452".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "lbl_03_april_2023".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Padding(
                                    padding: getPadding(top: 18, bottom: 18),
                                    child: Text("lbl_rp_5_000_0002".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12Green800))
                              ])),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 17, top: 3, right: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(75),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_isi_saldo2".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "lbl_via_bca".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "lbl_02_april_2023".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#000000"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Padding(
                                    padding: getPadding(top: 18, bottom: 18),
                                    child: Text("lbl_rp_5_000_0002".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12Green800))
                              ])),
                      Padding(
                          padding: getPadding(top: 6, bottom: 5),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray400))
                    ]))));
  }

  onTapRiwayat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.peminjamScreen,
    );
  }
}
