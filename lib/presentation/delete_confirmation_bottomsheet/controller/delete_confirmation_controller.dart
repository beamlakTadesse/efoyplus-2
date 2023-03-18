import 'package:realstate/core/app_export.dart';
import 'package:realstate/presentation/delete_confirmation_bottomsheet/models/delete_confirmation_model.dart';

class DeleteConfirmationController extends GetxController {
  Rx<DeleteConfirmationModel> deleteConfirmationModelObj =
      DeleteConfirmationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
