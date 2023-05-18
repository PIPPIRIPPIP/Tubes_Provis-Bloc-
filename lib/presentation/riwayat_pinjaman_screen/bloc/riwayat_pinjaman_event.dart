// ignore_for_file: must_be_immutable

part of 'riwayat_pinjaman_bloc.dart';

@immutable
abstract class RiwayatPinjamanEvent extends Equatable {}

class RiwayatPinjamanInitialEvent extends RiwayatPinjamanEvent {
  @override
  List<Object?> get props => [];
}
