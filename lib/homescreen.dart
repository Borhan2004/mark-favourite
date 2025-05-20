import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mark_favourite_app/favourite_controller.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.lightBlue,
      title: Text('GetX Tutorials'),

    ),
  body: ListView.builder(
    itemCount: controller.fruitList.length,
    itemBuilder: (context, index) {
      return Card(
        
        child: ListTile(
          onTap: () {
          
            if (controller.tempFruitList.contains(controller.fruitList[index].toString())) {
              controller.tempFruitList.remove(controller.fruitList[index].toString());
            } else {
              controller.tempFruitList.add(controller.fruitList[index].toString());
            }
          },
            
            
             title: Text(controller.fruitList[index].toString()),
           trailing: Obx(() => Icon(
             Icons.favorite,
             color: controller.tempFruitList.contains(controller.fruitList[index].toString())
                 ? Colors.red
                 : Colors.white,
           )),
        ),
      );
    },
      )  );
  }
}
