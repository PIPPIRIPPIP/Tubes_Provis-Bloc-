// ignore_for_file: must_be_immutable

part of 'riwayat_transaksi_peminjam_bloc.dart';

class RiwayatTransaksiPeminjamState extends Equatable {
  RiwayatTransaksiPeminjamState({
    this.selectedDropDownValue,
    this.riwayatTransaksiPeminjamModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  RiwayatTransaksiPeminjamModel? riwayatTransaksiPeminjamModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        riwayatTransaksiPeminjamModelObj,
      ];
  RiwayatTransaksiPeminjamState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    RiwayatTransaksiPeminjamModel? riwayatTransaksiPeminjamModelObj,
  }) {
    return RiwayatTransaksiPeminjamState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      riwayatTransaksiPeminjamModelObj: riwayatTransaksiPeminjamModelObj ??
          this.riwayatTransaksiPeminjamModelObj,
    );
  }
}
