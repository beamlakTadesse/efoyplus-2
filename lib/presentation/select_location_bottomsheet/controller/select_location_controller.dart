import 'package:realstate/core/app_export.dart';
import 'package:realstate/presentation/select_location_bottomsheet/models/select_location_model.dart';

class SelectLocationController extends GetxController {
  Rx<SelectLocationModel> selectLocationModelObj = SelectLocationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
