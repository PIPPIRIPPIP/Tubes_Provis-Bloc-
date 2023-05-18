// ignore_for_file: must_be_immutable

part of 'daftar_investor_bloc.dart';

class DaftarInvestorState extends Equatable {
  DaftarInvestorState({
    this.emailController,
    this.phonenumberController,
    this.passwordController,
    this.daftarInvestorModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? phonenumberController;

  TextEditingController? passwordController;

  DaftarInvestorModel? daftarInvestorModelObj;

  @override
  List<Object?> get props => [
        emailController,
        phonenumberController,
        passwordController,
        daftarInvestorModelObj,
      ];
  DaftarInvestorState copyWith({
    TextEditingController? emailController,
    TextEditingController? phonenumberController,
    TextEditingController? passwordController,
    DaftarInvestorModel? daftarInvestorModelObj,
  }) {
    return DaftarInvestorState(
      emailController: emailController ?? this.emailController,
      phonenumberController:
          phonenumberController ?? this.phonenumberController,
      passwordController: passwordController ?? this.passwordController,
      daftarInvestorModelObj:
          daftarInvestorModelObj ?? this.daftarInvestorModelObj,
    );
  }
}
