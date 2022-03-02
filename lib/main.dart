import 'package:flutter/material.dart';
import 'foodMenu.dart';

void main() {
  var app = runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shop_6206022610068",
      home: MyHomeApp(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  List<foodMenu> menu = [
    foodMenu("Notebook", "25000", "assets/images/img1.jpg"),
    foodMenu("Tablet", "15000", "assets/images/img2.png"),
    foodMenu("PC", "30000", "assets/images/img3.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "shop_6206022610068",
        ),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            foodMenu food = menu[index];
            return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  ' ${index + 1}' + '.' + food.name,
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text("ราคา " + food.price + " บาท"),
                onTap: () {
                  AlertDialog alert = AlertDialog(
                    title: Text("เมนูที่คุณเลือก คือ " + food.name),
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                  //print("คุณเลือกเมนู คือ " + food.name);
                });
          }),
    );
  }
}

int number = 0;
List<Widget> getData(int count) {
  List<Widget> data = [];

  for (var i = 1; i <= 10; i++) {
    var menu = ListTile(
      title: Text(
        'เมนูที่ $i',
        style: TextStyle(fontSize: 20, color: Colors.red),
      ),
      subtitle: Text('หัวข้อย่อยที่ $i'),
    );
    data.add(menu);
  }
  return data;
}
