import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/summary_screen/models/summary_model.dart';class SummaryController extends GetxController {Rx<SummaryModel> summaryModelObj = SummaryModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
