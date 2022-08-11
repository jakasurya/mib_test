import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mib_test/app/bindings/transaksi_binding.dart';
import 'package:mib_test/app/pages/transaksi/transaksi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MIB Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: TransaksiBinding(),
      home: const TransaksiPage(),
    );
  }
}
