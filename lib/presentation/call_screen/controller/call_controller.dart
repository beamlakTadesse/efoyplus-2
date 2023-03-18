import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/call_screen/models/call_model.dart';class CallController extends GetxController {Rx<CallModel> callModelObj = CallModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
