// ignore_for_file: must_be_immutable

part of 'daftar_peminjam_perorangan_bloc.dart';

class DaftarPeminjamPeroranganState extends Equatable {
  DaftarPeminjamPeroranganState({
    this.fullnameController,
    this.emailoneController,
    this.mobilenoController,
    this.nikexampleController,
    this.provinceoptionsController,
    this.cityoptionsController,
    this.businesstypeoptController,
    this.daftarPeminjamPeroranganModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? emailoneController;

  TextEditingController? mobilenoController;

  TextEditingController? nikexampleController;

  TextEditingController? provinceoptionsController;

  TextEditingController? cityoptionsController;

  TextEditingController? businesstypeoptController;

  DaftarPeminjamPeroranganModel? daftarPeminjamPeroranganModelObj;

  @override
  List<Object?> get props => [
        fullnameController,
        emailoneController,
        mobilenoController,
        nikexampleController,
        provinceoptionsController,
        cityoptionsController,
        businesstypeoptController,
        daftarPeminjamPeroranganModelObj,
      ];
  DaftarPeminjamPeroranganState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? emailoneController,
    TextEditingController? mobilenoController,
    TextEditingController? nikexampleController,
    TextEditingController? provinceoptionsController,
    TextEditingController? cityoptionsController,
    TextEditingController? businesstypeoptController,
    DaftarPeminjamPeroranganModel? daftarPeminjamPeroranganModelObj,
  }) {
    return DaftarPeminjamPeroranganState(
      fullnameController: fullnameController ?? this.fullnameController,
      emailoneController: emailoneController ?? this.emailoneController,
      mobilenoController: mobilenoController ?? this.mobilenoController,
      nikexampleController: nikexampleController ?? this.nikexampleController,
      provinceoptionsController:
          provinceoptionsController ?? this.provinceoptionsController,
      cityoptionsController:
          cityoptionsController ?? this.cityoptionsController,
      businesstypeoptController:
          businesstypeoptController ?? this.businesstypeoptController,
      daftarPeminjamPeroranganModelObj: daftarPeminjamPeroranganModelObj ??
          this.daftarPeminjamPeroranganModelObj,
    );
  }
}
