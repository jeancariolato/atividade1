import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2, // Número de abas
        child: Scaffold(
          //BACKGROUND
          backgroundColor: Colors.black,

          appBar: const TabBar(
            dividerColor: Colors.transparent,
            //ALTERAR CORES DA TAB BAR
            indicatorWeight: 2,
            labelColor: Color.fromARGB(255, 255, 255, 255),
            unselectedLabelColor: Color.fromARGB(255, 94, 94, 94),
            indicatorColor: Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(text: "Login"),
              Tab(text: "Sign Up"),
            ],
          ),

          body: TabBarView(
            children: [
              // Primeira aba - Conteúdo Login
              LoginPage(),
              // Segunda aba - Conteúdo Sign Up
              SignUpPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //CARREGAR IMAGEM
          const SizedBox(height: 200),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/logo.png",
                  width: 65,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 25),
                Text(
                  "Bem-vindo ao ActivityOne!",
                  style: GoogleFonts.nunitoSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          //CAMPO DE TEXTO 1
          SizedBox(
            width: 300,
            height: 40,
            child: const TextField(
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.people_alt),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                labelText: "Usuário",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ),
          const SizedBox(height: 35),
          //CAMPO DE TEXTO 2
          SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              obscureText: _obscureText,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color.fromARGB(255, 104, 104, 104),
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                labelText: "Senha",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ),
          const SizedBox(height: 35),
          ElevatedButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 255, 255, 255),
              ),
              foregroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.login),
                  SizedBox(width: 8),
                  Text(
                    "Enter",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 170),
              Text(
                'Vamos começar o seu cadastro.',
                style: GoogleFonts.nunitoSans(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              //CAMPO NOME COMPLETO
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  labelText: "Nome completo",
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  labelText: "Email",
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  labelText: "CPF",
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  labelText: "Nova senha",
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(85.0, 10.0, 85.0, 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Prosseguir",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
