import '../halaman_awal_screen/widgets/halamanawal_item_widget.dart';
import 'bloc/halaman_awal_bloc.dart';
import 'models/halaman_awal_model.dart';
import 'models/halamanawal_item_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:ayesha_s_application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HalamanAwalScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HalamanAwalBloc>(
        create: (context) => HalamanAwalBloc(
            HalamanAwalState(halamanAwalModelObj: HalamanAwalModel()))
          ..add(HalamanAwalInitialEvent()),
        child: HalamanAwalScreen());
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
                      Padding(
                          padding: getPadding(top: 25),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMoneylogodesi,
                                    height: getVerticalSize(76),
                                    width: getHorizontalSize(224)),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Text("msg_bersama_membangun".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium14)),
                                CustomButton(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(200),
                                    text: "lbl_daftar_sekarang".tr,
                                    margin: getMargin(top: 20),
                                    fontStyle:
                                        ButtonFontStyle.PoppinsSemiBold16,
                                    onTap: () {
                                      onTapDaftarsekarang(context);
                                    }),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtMasuk(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("lbl_masuk".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsSemiBold16
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.32))))),
                                Container(
                                    height: getVerticalSize(704),
                                    width: double.maxFinite,
                                    margin: getMargin(top: 28),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 10,
                                                      right: 16,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f1
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_peluang_investasi"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold16WhiteA700),
                                                        Expanded(
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 38,
                                                                        bottom:
                                                                            140),
                                                                child: BlocSelector<
                                                                        HalamanAwalBloc,
                                                                        HalamanAwalState,
                                                                        HalamanAwalModel?>(
                                                                    selector:
                                                                        (state) =>
                                                                            state
                                                                                .halamanAwalModelObj,
                                                                    builder:
                                                                        (context,
                                                                            halamanAwalModelObj) {
                                                                      return ListView.separated(
                                                                          physics: BouncingScrollPhysics(),
                                                                          shrinkWrap: true,
                                                                          separatorBuilder: (context, index) {
                                                                            return SizedBox(height: getVerticalSize(29));
                                                                          },
                                                                          itemCount: halamanAwalModelObj?.halamanawalItemList.length ?? 0,
                                                                          itemBuilder: (context, index) {
                                                                            HalamanawalItemModel
                                                                                model =
                                                                                halamanAwalModelObj?.halamanawalItemList[index] ?? HalamanawalItemModel();
                                                                            return HalamanawalItemWidget(model);
                                                                          });
                                                                    })))
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowdown,
                                              height: getVerticalSize(20),
                                              width: getHorizontalSize(24),
                                              alignment: Alignment.topCenter)
                                        ]))
                              ]))
                    ]))));
  }

  onTapDaftarsekarang(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pilihAkunScreen,
    );
  }

  onTapTxtMasuk(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
