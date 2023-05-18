// ignore_for_file: must_be_immutable

part of 'daftar_peminjam_perusahaan_bloc.dart';

class DaftarPeminjamPerusahaanState extends Equatable {
  DaftarPeminjamPerusahaanState({
    this.fullnameasperidController,
    this.emailoneController,
    this.mobilenoController,
    this.mobilenooneController,
    this.companytypeController,
    this.selectprovinceController,
    this.selectcityController,
    this.selectbusinesstController,
    this.daftarPeminjamPerusahaanModelObj,
  });

  TextEditingController? fullnameasperidController;

  TextEditingController? emailoneController;

  TextEditingController? mobilenoController;

  TextEditingController? mobilenooneController;

  TextEditingController? companytypeController;

  TextEditingController? selectprovinceController;

  TextEditingController? selectcityController;

  TextEditingController? selectbusinesstController;

  DaftarPeminjamPerusahaanModel? daftarPeminjamPerusahaanModelObj;

  @override
  List<Object?> get props => [
        fullnameasperidController,
        emailoneController,
        mobilenoController,
        mobilenooneController,
        companytypeController,
        selectprovinceController,
        selectcityController,
        selectbusinesstController,
        daftarPeminjamPerusahaanModelObj,
      ];
  DaftarPeminjamPerusahaanState copyWith({
    TextEditingController? fullnameasperidController,
    TextEditingController? emailoneController,
    TextEditingController? mobilenoController,
    TextEditingController? mobilenooneController,
    TextEditingController? companytypeController,
    TextEditingController? selectprovinceController,
    TextEditingController? selectcityController,
    TextEditingController? selectbusinesstController,
    DaftarPeminjamPerusahaanModel? daftarPeminjamPerusahaanModelObj,
  }) {
    return DaftarPeminjamPerusahaanState(
      fullnameasperidController:
          fullnameasperidController ?? this.fullnameasperidController,
      emailoneController: emailoneController ?? this.emailoneController,
      mobilenoController: mobilenoController ?? this.mobilenoController,
      mobilenooneController:
          mobilenooneController ?? this.mobilenooneController,
      companytypeController:
          companytypeController ?? this.companytypeController,
      selectprovinceController:
          selectprovinceController ?? this.selectprovinceController,
      selectcityController: selectcityController ?? this.selectcityController,
      selectbusinesstController:
          selectbusinesstController ?? this.selectbusinesstController,
      daftarPeminjamPerusahaanModelObj: daftarPeminjamPerusahaanModelObj ??
          this.daftarPeminjamPerusahaanModelObj,
    );
  }
}
