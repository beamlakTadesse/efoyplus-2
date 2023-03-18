import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/chat_screen/models/chat_model.dart';import 'package:flutter/material.dart';class ChatController extends GetxController {TextEditingController descriptionOneController = TextEditingController();

TextEditingController formchatController = TextEditingController();

Rx<ChatModel> chatModelObj = ChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); descriptionOneController.dispose(); formchatController.dispose(); } 
 }
