import 'package:challenge4/model/cars.dart';
import 'package:challenge4/model/nameCar.dart';
import 'package:challenge4/model/producte.dart';
import 'package:challenge4/server/ApiClass.dart';
import 'package:challenge4/server/ApiNet/EndPoint.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ApiClassController extends GetxController {
  List<Carts> allCars = [];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    carsData();
  }

  carsData() async {
    var allData = await ApiClass.Methodpost(endPoint: EndPoint.carts);
    // print(allData);
    List<Carts> a = [];
    allData['carts'].forEach((v) {
      a.add(Carts.formJson(json: v));
    });
    allCars = a;
    print(allCars);
    update();
  }
}
