import 'package:get/get.dart';
import '../controllers/motorcycle_controller.dart';

class MotorcycleBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MotorcycleController>(() => MotorcycleController());
  }
}
