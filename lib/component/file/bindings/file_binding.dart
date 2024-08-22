import 'package:get/get.dart';

import '../controllers/file_controller.dart';

class FileBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<FileController>(() => FileController());

  }
}
