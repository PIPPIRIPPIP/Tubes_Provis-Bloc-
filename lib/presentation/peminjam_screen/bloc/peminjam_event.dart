// ignore_for_file: must_be_immutable

part of 'peminjam_bloc.dart';

@immutable
abstract class PeminjamEvent extends Equatable {}

class PeminjamInitialEvent extends PeminjamEvent {
  @override
  List<Object?> get props => [];
}
