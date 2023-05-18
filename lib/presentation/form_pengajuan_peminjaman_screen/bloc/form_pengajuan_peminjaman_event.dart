// ignore_for_file: must_be_immutable

part of 'form_pengajuan_peminjaman_bloc.dart';

@immutable
abstract class FormPengajuanPeminjamanEvent extends Equatable {}

class FormPengajuanPeminjamanInitialEvent extends FormPengajuanPeminjamanEvent {
  @override
  List<Object?> get props => [];
}
