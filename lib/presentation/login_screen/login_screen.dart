import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:ayesha_s_application3/core/utils/validation_functions.dart';
import 'package:ayesha_s_application3/widgets/custom_button.dart';
import 'package:ayesha_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
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
                    padding: getPadding(left: 51, top: 107, right: 51),
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
                                  margin: getMargin(top: 26, bottom: 5),
                                  padding: getPadding(
                                      left: 23, top: 28, right: 23, bottom: 28),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        BlocSelector<LoginBloc, LoginState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.emailController,
                                            builder:
                                                (context, emailController) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller: emailController,
                                                  hintText: "lbl_email".tr,
                                                  margin: getMargin(top: 7),
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
                                        BlocSelector<LoginBloc, LoginState,
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
                                                  margin: getMargin(top: 28),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder3,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsRegular15,
                                                  textInputAction:
                                                      TextInputAction.done);
                                            }),
                                        CustomButton(
                                            height: getVerticalSize(37),
                                            text: "lbl_masuk".tr,
                                            margin: getMargin(top: 28),
                                            onTap: () {
                                              onTapMasuk(context);
                                            }),
                                        Container(
                                            height: getVerticalSize(19),
                                            width: getHorizontalSize(160),
                                            margin: getMargin(top: 20),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text(
                                                          "msg_belum_punya_akun"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12)),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapTxtDaftar(
                                                                context);
                                                          },
                                                          child: Text(
                                                              "lbl_daftar".tr,
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

  onTapMasuk(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.peminjamScreen,
    );
  }

  onTapTxtDaftar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pilihAkunScreen,
    );
  }
}
