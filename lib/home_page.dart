import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: Switch(
              value: AppController.instance.isDarkTheme,
              onChanged: (value) {
                AppController.instance.changeTheme();
              })
          // GestureDetector(
          //     child: Text(
          //       'Contador: $counter',
          //       style: TextStyle(fontSize: 20),
          //     ),
          //     onTap: () {
          //       setState(() {
          //         counter++; //boas práticas
          //       });
          //     }),
          ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++; //boas práticas
          });
        },
      ),
    );
  }
}
