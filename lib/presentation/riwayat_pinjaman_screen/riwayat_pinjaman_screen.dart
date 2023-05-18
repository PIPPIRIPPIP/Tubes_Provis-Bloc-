import '../riwayat_pinjaman_screen/widgets/riwayat_item_widget.dart';
import 'bloc/riwayat_pinjaman_bloc.dart';
import 'models/riwayat_item_model.dart';
import 'models/riwayat_pinjaman_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class RiwayatPinjamanScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RiwayatPinjamanBloc>(
      create: (context) => RiwayatPinjamanBloc(RiwayatPinjamanState(
        riwayatPinjamanModelObj: RiwayatPinjamanModel(),
      ))
        ..add(RiwayatPinjamanInitialEvent()),
      child: RiwayatPinjamanScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            top: 23,
            right: 15,
            bottom: 23,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_riwayat_dan_tagihan".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold20,
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                  right: 2,
                ),
                child: BlocSelector<RiwayatPinjamanBloc, RiwayatPinjamanState,
                    RiwayatPinjamanModel?>(
                  selector: (state) => state.riwayatPinjamanModelObj,
                  builder: (context, riwayatPinjamanModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            19,
                          ),
                        );
                      },
                      itemCount:
                          riwayatPinjamanModelObj?.riwayatItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        RiwayatItemModel model =
                            riwayatPinjamanModelObj?.riwayatItemList[index] ??
                                RiwayatItemModel();
                        return RiwayatItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                  bottom: 5,
                ),
                child: Text(
                  "msg_tidak_ada_riwayat".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsLight10,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 25,
            right: 10,
            bottom: 7,
          ),
          decoration: AppDecoration.fillBlueA200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.fillBlueA200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgIgaminghouse,
                            height: getSize(
                              35,
                            ),
                            width: getSize(
                              35,
                            ),
                          ),
                          Text(
                            "lbl_beranda".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgAirplane,
                                  height: getSize(
                                    30,
                                  ),
                                  width: getSize(
                                    30,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgTicket,
                                  height: getSize(
                                    23,
                                  ),
                                  width: getSize(
                                    23,
                                  ),
                                  margin: getMargin(
                                    left: 115,
                                    top: 6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "lbl_pinjam".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold10,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 75,
                                  ),
                                  child: Text(
                                    "msg_tagihan_pinjaman2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
