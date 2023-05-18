// ignore_for_file: must_be_immutable

part of 'riwayat_transaksi_peminjam_bloc.dart';

@immutable
abstract class RiwayatTransaksiPeminjamEvent extends Equatable {}

class RiwayatTransaksiPeminjamInitialEvent
    extends RiwayatTransaksiPeminjamEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends RiwayatTransaksiPeminjamEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
