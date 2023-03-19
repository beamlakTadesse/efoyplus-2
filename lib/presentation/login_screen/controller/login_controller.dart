import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/login_screen/models/login_model.dart';class LoginController extends GetxController {Rx<LoginModel> loginModelObj = LoginModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
