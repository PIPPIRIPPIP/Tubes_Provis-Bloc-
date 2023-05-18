import 'package:flutter/material.dart';
import 'package:ayesha_s_application3/presentation/login_screen/login_screen.dart';
import 'package:ayesha_s_application3/presentation/halaman_awal_screen/halaman_awal_screen.dart';
import 'package:ayesha_s_application3/presentation/pilih_akun_screen/pilih_akun_screen.dart';
import 'package:ayesha_s_application3/presentation/daftar_investor_screen/daftar_investor_screen.dart';
import 'package:ayesha_s_application3/presentation/peminjam_screen/peminjam_screen.dart';
import 'package:ayesha_s_application3/presentation/form_pengajuan_peminjaman_screen/form_pengajuan_peminjaman_screen.dart';
import 'package:ayesha_s_application3/presentation/riwayat_pinjaman_screen/riwayat_pinjaman_screen.dart';
import 'package:ayesha_s_application3/presentation/daftar_peminjam_perorangan_screen/daftar_peminjam_perorangan_screen.dart';
import 'package:ayesha_s_application3/presentation/daftar_peminjam_perusahaan_screen/daftar_peminjam_perusahaan_screen.dart';
import 'package:ayesha_s_application3/presentation/profile_screen/profile_screen.dart';
import 'package:ayesha_s_application3/presentation/riwayat_transaksi_peminjam_screen/riwayat_transaksi_peminjam_screen.dart';
import 'package:ayesha_s_application3/presentation/notifikasi_screen/notifikasi_screen.dart';
import 'package:ayesha_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String halamanAwalScreen = '/halaman_awal_screen';

  static const String pilihAkunScreen = '/pilih_akun_screen';

  static const String daftarInvestorScreen = '/daftar_investor_screen';

  static const String peminjamScreen = '/peminjam_screen';

  static const String formPengajuanPeminjamanScreen =
      '/form_pengajuan_peminjaman_screen';

  static const String riwayatPinjamanScreen = '/riwayat_pinjaman_screen';

  static const String daftarPeminjamPeroranganScreen =
      '/daftar_peminjam_perorangan_screen';

  static const String daftarPeminjamPerusahaanScreen =
      '/daftar_peminjam_perusahaan_screen';

  static const String profileScreen = '/profile_screen';

  static const String riwayatTransaksiPeminjamScreen =
      '/riwayat_transaksi_peminjam_screen';

  static const String notifikasiScreen = '/notifikasi_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        halamanAwalScreen: HalamanAwalScreen.builder,
        pilihAkunScreen: PilihAkunScreen.builder,
        daftarInvestorScreen: DaftarInvestorScreen.builder,
        peminjamScreen: PeminjamScreen.builder,
        formPengajuanPeminjamanScreen: FormPengajuanPeminjamanScreen.builder,
        riwayatPinjamanScreen: RiwayatPinjamanScreen.builder,
        daftarPeminjamPeroranganScreen: DaftarPeminjamPeroranganScreen.builder,
        daftarPeminjamPerusahaanScreen: DaftarPeminjamPerusahaanScreen.builder,
        profileScreen: ProfileScreen.builder,
        riwayatTransaksiPeminjamScreen: RiwayatTransaksiPeminjamScreen.builder,
        notifikasiScreen: NotifikasiScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HalamanAwalScreen.builder
      };
}
