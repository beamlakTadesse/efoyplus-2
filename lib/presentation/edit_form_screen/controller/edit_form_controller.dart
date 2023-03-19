import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/edit_form_screen/models/edit_form_model.dart';import 'package:flutter/material.dart';class EditFormController extends GetxController {TextEditingController formPasswordController = TextEditingController();

Rx<EditFormModel> editFormModelObj = EditFormModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formPasswordController.dispose(); } 
 }
