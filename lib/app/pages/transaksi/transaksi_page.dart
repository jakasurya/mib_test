import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mib_test/app/controllers/transaksi_controller.dart';
import 'package:mib_test/app/core/helper.dart';

import 'widgets/item_detail.dart';
import 'widgets/wbutton.dart';

class TransaksiPage extends GetView<TransaksiController> {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff01396c),
        title: const Text('Transaksi Sukses'),
      ),
      backgroundColor: const Color(0xffececec),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: Get.height * 0.8,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/img/logo.png'),
                                      fit: BoxFit.fill)),
                              height: 130,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              color: const Color(0xffececec),
                              height: 4,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.check_circle_rounded,
                                    color: Colors.green),
                                SizedBox(width: 5),
                                Text(
                                  'Transaksi Berhasil',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Pembayaran CREDIT CARD MEGA',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ItemDetail(
                                title: 'Ref', value: controller.transaksi.ref),
                            ItemDetail(
                                title: 'Waktu',
                                value: '${controller.transaksi.time} WIB'),
                            ItemDetail(
                                title: 'Status Transaksi',
                                value: controller.transaksi.status),
                            ItemDetail(
                                title: 'Sumber Dana',
                                value: controller.transaksi.dst
                                    .replaceRange(0, 5, "xxxxxxx")),
                            ItemDetail(
                                title: 'Nomor Kartu',
                                value: controller.transaksi.numberCard),
                            const SizedBox(height: 10),
                            const Text(
                              'Card Holder',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30),
                            ItemDetail(
                                title: 'Jumlah Bayar',
                                value: FormatRupiah.toIdr(
                                    int.parse(controller.transaksi.pay))),
                            ItemDetail(
                                title: 'Biaya Administrasi',
                                value: FormatRupiah.toIdr(
                                    int.parse(controller.transaksi.admin))),
                            ItemDetail(
                                title: 'Total Pembayaran',
                                value: FormatRupiah.toIdr(
                                    int.parse(controller.transaksi.total))),
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 30),
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 5,
                              height: 60,
                              color: const Color(0xffececec),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WButtonCustom(
                  color: const Color(0xff01396c),
                  label: 'Beranda',
                  width: 0.18,
                  height: 20,
                  fun: () {},
                ),
                WButtonCustom(
                  color: const Color(0xffdb7800),
                  label: '',
                  icon: Icons.share_rounded,
                  width: 0.065,
                  height: 20,
                  fun: () {},
                ),
                WButtonCustom(
                  color: const Color(0xffdb7800),
                  label: '',
                  icon: Icons.star_outline,
                  width: 0.065,
                  height: 20,
                  fun: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
