import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/form_empty_screen/models/form_empty_model.dart';import 'package:flutter/material.dart';class FormEmptyController extends GetxController {TextEditingController formTextEmptyController = TextEditingController();

TextEditingController formPasswordController = TextEditingController();

Rx<FormEmptyModel> formEmptyModelObj = FormEmptyModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formTextEmptyController.dispose(); formPasswordController.dispose(); } 
 }
