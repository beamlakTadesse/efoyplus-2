import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/top_agents_profile_detail_tab_container_screen/models/top_agents_profile_detail_tab_container_model.dart';import 'package:flutter/material.dart';class TopAgentsProfileDetailTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<TopAgentsProfileDetailTabContainerModel> topAgentsProfileDetailTabContainerModelObj = TopAgentsProfileDetailTabContainerModel().obs;

late TabController buttonController = Get.put(TabController(vsync: this, length: 2));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
