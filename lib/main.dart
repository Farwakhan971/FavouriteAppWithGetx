import 'package:favouriteappwithgetx/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homescreen(),
    );
  }
}
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
    Favouritecontroller favouritecontroller = Get.put(Favouritecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouritecontroller.fruitlist.length,
                itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      if(favouritecontroller.templist.contains(favouritecontroller.fruitlist[index].toString())) {
                        favouritecontroller.removefromfavourite(favouritecontroller.fruitlist[index].toString());
                      }
                      else {
                        favouritecontroller.addtofavourite(favouritecontroller.fruitlist[index].toString());
                      }
                    },
                    title: Text(favouritecontroller.fruitlist[index].toString()),
                    trailing: Obx(() => Icon(Icons.favorite, color: favouritecontroller.templist.contains(favouritecontroller.fruitlist[index].toString())? Colors.red: Colors.white,)),
                  );
            }),
          )
        ],
      ),
    );
  }
}


