import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              //CARREGAR IMAGEM
              Container(
                width: 200,
                height: 300,
                child: Image.network(
                    'https://i.pinimg.com/736x/ba/3a/1e/ba3a1ebe3532604307b99931d34b4a27.jpg'),
              ),

              //CAMPO DE TEXTO 1
              Container(
                width: 300,
                height: 40,
                child: TextField(
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue), // Cor da borda quando focado
                      ),
                      labelText: "Usuário"),
                ),
              ),
              SizedBox(height: 35),
              //CAMPO DE TEXTO 2
              Container(
                width: 300,
                height: 40,
                child: TextField(
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue), // Cor da borda quando focado
                      ),
                      labelText: "Senha"),
                ),
              ),
              SizedBox(height: 35),
              //BOTAO PRETO COM TEXTO BRANCO 'LOGIN'
              ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                        const Color.fromARGB(255, 255, 255, 255)),
                    foregroundColor: WidgetStatePropertyAll(
                        const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.fromLTRB(110.0, 15.0, 110.0, 15.0),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
