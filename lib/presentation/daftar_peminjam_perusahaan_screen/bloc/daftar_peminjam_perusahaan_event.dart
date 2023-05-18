// ignore_for_file: must_be_immutable

part of 'daftar_peminjam_perusahaan_bloc.dart';

@immutable
abstract class DaftarPeminjamPerusahaanEvent extends Equatable {}

class DaftarPeminjamPerusahaanInitialEvent
    extends DaftarPeminjamPerusahaanEvent {
  @override
  List<Object?> get props => [];
}
