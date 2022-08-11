import 'package:get/get.dart';
import 'package:mib_test/app/controllers/transaksi_controller.dart';

class TransaksiBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransaksiController>(() => TransaksiController());
  }
}
