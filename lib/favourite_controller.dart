import 'package:get/get.dart';
class Favouritecontroller extends GetxController{
  RxList<String> fruitlist = ['Banana', 'Apple', 'Mangoes', 'Strawberry'].obs;
  RxList<dynamic> templist = [].obs;

  addtofavourite(String value){
    templist.add(value);
  }
  removefromfavourite(String value){
    templist.remove(value);
  }


}