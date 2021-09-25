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
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment:
            //     CrossAxisAlignment.stretch, //alinhamento dos filhos
            children: [
              Text('Contador:  $counter'),
              Switch(
                value: AppController.instance.isDarkTheme,
                onChanged: (value) {
                  AppController.instance.changeTheme();
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 50, height: 50, color: Colors.black),
                  Container(width: 50, height: 50, color: Colors.black),
                  Container(width: 50, height: 50, color: Colors.black)
                ],
              )
            ],
          )),
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
