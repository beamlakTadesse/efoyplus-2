import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/featured_estates_screen/models/featured_estates_model.dart';import 'package:flutter/material.dart';class FeaturedEstatesController extends GetxController {TextEditingController formsearchemptyController = TextEditingController();

Rx<FeaturedEstatesModel> featuredEstatesModelObj = FeaturedEstatesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formsearchemptyController.dispose(); } 
 }
