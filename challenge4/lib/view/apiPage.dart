import 'package:challenge4/controller/apiClassController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ApiPage extends StatelessWidget {
  ApiPage({super.key});

  ApiClassController apiClassController = Get.put(ApiClassController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          GetBuilder<ApiClassController>(builder: (_) {
            return Text(apiClassController.allCars.toString());
          })
        ],
      )),
    );
  }
}
