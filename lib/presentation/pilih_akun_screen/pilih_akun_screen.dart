import '../pilih_akun_screen/widgets/pilih_akun_item_widget.dart';
import 'bloc/pilih_akun_bloc.dart';
import 'models/pilih_akun_item_model.dart';
import 'models/pilih_akun_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class PilihAkunScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PilihAkunBloc>(
        create: (context) =>
            PilihAkunBloc(PilihAkunState(pilihAkunModelObj: PilihAkunModel()))
              ..add(PilihAkunInitialEvent()),
        child: PilihAkunScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 25, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgMoneylogodesi,
                          height: getVerticalSize(76),
                          width: getHorizontalSize(224)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("msg_pilih_jenis_akun".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular24)),
                      Container(
                          width: getHorizontalSize(268),
                          margin: getMargin(top: 22),
                          child: Text("msg_mohon_pilih_jenis".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular12Gray900)),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 29),
                              child: BlocSelector<PilihAkunBloc, PilihAkunState,
                                      PilihAkunModel?>(
                                  selector: (state) => state.pilihAkunModelObj,
                                  builder: (context, pilihAkunModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(46));
                                        },
                                        itemCount: pilihAkunModelObj
                                                ?.pilihAkunItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          PilihAkunItemModel model =
                                              pilihAkunModelObj
                                                          ?.pilihAkunItemList[
                                                      index] ??
                                                  PilihAkunItemModel();
                                          return PilihAkunItemWidget(model,
                                              onTapDaftarsebagai: () {
                                            onTapDaftarsebagai(context);
                                          });
                                        });
                                  })))
                    ]))));
  }

  onTapDaftarsebagai(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.daftarInvestorScreen,
    );
  }
}
