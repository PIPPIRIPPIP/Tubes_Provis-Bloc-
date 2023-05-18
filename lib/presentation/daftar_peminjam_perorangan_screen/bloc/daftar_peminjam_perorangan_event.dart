// ignore_for_file: must_be_immutable

part of 'daftar_peminjam_perorangan_bloc.dart';

@immutable
abstract class DaftarPeminjamPeroranganEvent extends Equatable {}

class DaftarPeminjamPeroranganInitialEvent
    extends DaftarPeminjamPeroranganEvent {
  @override
  List<Object?> get props => [];
}
