import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (String value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (String value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (email == "karol.db@hotmail.com" && password == "123") {
                      //o pushNamed chama o nome da rota definida na app_widget e sobrescreve a HomePage por cima da tela de login
                      Navigator.of(context).pushNamed('/home');
                      //o pushReplacementNamed chama o nome da rota definida na app_widget e substitui a tela de login pela HomePage
                      // Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print("login inválido");
                    }
                  },
                  child: const Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
