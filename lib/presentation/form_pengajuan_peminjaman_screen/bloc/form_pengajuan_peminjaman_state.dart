// ignore_for_file: must_be_immutable

part of 'form_pengajuan_peminjaman_bloc.dart';

class FormPengajuanPeminjamanState extends Equatable {
  FormPengajuanPeminjamanState({
    this.newbranchController,
    this.bulancounterController,
    this.repaymentfrequeController,
    this.formPengajuanPeminjamanModelObj,
  });

  TextEditingController? newbranchController;

  TextEditingController? bulancounterController;

  TextEditingController? repaymentfrequeController;

  FormPengajuanPeminjamanModel? formPengajuanPeminjamanModelObj;

  @override
  List<Object?> get props => [
        newbranchController,
        bulancounterController,
        repaymentfrequeController,
        formPengajuanPeminjamanModelObj,
      ];
  FormPengajuanPeminjamanState copyWith({
    TextEditingController? newbranchController,
    TextEditingController? bulancounterController,
    TextEditingController? repaymentfrequeController,
    FormPengajuanPeminjamanModel? formPengajuanPeminjamanModelObj,
  }) {
    return FormPengajuanPeminjamanState(
      newbranchController: newbranchController ?? this.newbranchController,
      bulancounterController:
          bulancounterController ?? this.bulancounterController,
      repaymentfrequeController:
          repaymentfrequeController ?? this.repaymentfrequeController,
      formPengajuanPeminjamanModelObj: formPengajuanPeminjamanModelObj ??
          this.formPengajuanPeminjamanModelObj,
    );
  }
}
