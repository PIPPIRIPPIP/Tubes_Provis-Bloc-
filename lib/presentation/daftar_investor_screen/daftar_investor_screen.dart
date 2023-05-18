import 'bloc/daftar_investor_bloc.dart';
import 'models/daftar_investor_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:ayesha_s_application3/core/utils/validation_functions.dart';
import 'package:ayesha_s_application3/widgets/custom_button.dart';
import 'package:ayesha_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DaftarInvestorScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<DaftarInvestorBloc>(
        create: (context) => DaftarInvestorBloc(
            DaftarInvestorState(daftarInvestorModelObj: DaftarInvestorModel()))
          ..add(DaftarInvestorInitialEvent()),
        child: DaftarInvestorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 51, top: 26, right: 51, bottom: 26),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMoneylogodesi,
                              height: getVerticalSize(76),
                              width: getHorizontalSize(224)),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 21, bottom: 5),
                                  padding: getPadding(
                                      left: 23, top: 27, right: 23, bottom: 27),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_daftar_sebagai_investor".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular20),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: Text(
                                                "msg_harap_lengkapi_form".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12)),
                                        BlocSelector<
                                                DaftarInvestorBloc,
                                                DaftarInvestorState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.emailController,
                                            builder:
                                                (context, emailController) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller: emailController,
                                                  hintText: "lbl_email".tr,
                                                  margin: getMargin(top: 26),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder3,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsRegular15,
                                                  textInputType: TextInputType
                                                      .emailAddress,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidEmail(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid email";
                                                    }
                                                    return null;
                                                  });
                                            }),
                                        BlocSelector<
                                                DaftarInvestorBloc,
                                                DaftarInvestorState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.phonenumberController,
                                            builder: (context,
                                                phonenumberController) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      phonenumberController,
                                                  hintText:
                                                      "lbl_nomor_ponsel".tr,
                                                  margin: getMargin(top: 28),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder3,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsRegular15);
                                            }),
                                        BlocSelector<
                                                DaftarInvestorBloc,
                                                DaftarInvestorState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.passwordController,
                                            builder:
                                                (context, passwordController) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      passwordController,
                                                  hintText: "lbl_kata_sandi".tr,
                                                  margin: getMargin(top: 25),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder3,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsRegular15,
                                                  textInputAction:
                                                      TextInputAction.done);
                                            }),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 25, right: 8),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                          height: getSize(25),
                                                          width: getSize(25),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 19),
                                                          padding: getPadding(
                                                              all: 1),
                                                          decoration:
                                                              AppDecoration
                                                                  .fillBlueA200,
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage6,
                                                                height:
                                                                    getSize(21),
                                                                width:
                                                                    getSize(21),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  223),
                                                          child: Text(
                                                              "msg_dengan_klik_lanjutkan"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular10))
                                                    ]))),
                                        CustomButton(
                                            height: getVerticalSize(37),
                                            text: "lbl_lanjutkan".tr,
                                            margin: getMargin(top: 27)),
                                        Container(
                                            height: getVerticalSize(18),
                                            width: getHorizontalSize(155),
                                            margin:
                                                getMargin(top: 27, bottom: 1),
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Text(
                                                          "msg_sudah_punya_akun"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12)),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapTxtLogin(
                                                                context);
                                                          },
                                                          child: Text(
                                                              "lbl_login".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12BlueA200)))
                                                ]))
                                      ])))
                        ])))));
  }

  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
