import 'package:get/get.dart';

class FavouriteController extends GetxController{

RxList<String> fruitList = ['Orange','Mango','Apple','Watermelon','Banana','Jackfruit','Grape'].obs;
RxList tempFruitList = [].obs;

addToFavourite(String value){
tempFruitList.add(value);
}

removeFromFavourite(String value){
  tempFruitList.remove(value);
}

}