import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart'; // Importa o arquivo home_page.dart

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
        length: 1, // Número de abas
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: const TabBar(
            dividerColor: Colors.transparent,
            indicatorWeight: 2,
            labelColor: Color.fromARGB(255, 255, 255, 255),
            unselectedLabelColor: Color.fromARGB(255, 94, 94, 94),
            indicatorColor: Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(text: "Login"),
            ],
          ),
          body: const TabBarView(
            children: [
              LoginPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variável para armazenar o nome de usuário
  bool _obscureText = true;
  String username = '';
  String password = '';

  // Controladores
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

//metodo de login
 void _login() {
  if (_usernameController.text.isEmpty) {
    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Por favor, insira um nome de usuário!')),
    );
  } else if (_passwordController.text == '1234') {
    
    setState(() {
      username = _usernameController.text;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(username: username), // Navega para a HomePage
      ),
    );
  } else {
    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Senha incorreta!')),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 48, 48, 48),
                      radius: 50,
                      backgroundImage: AssetImage('images/logo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              controller:
                  _usernameController, // Controle do campo de nome de usuário
              style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.people_alt),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                labelText: "Usuário",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ),
          const SizedBox(height: 35),
          SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              controller: _passwordController, // Controle do campo de senha
              obscureText: _obscureText,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color.fromARGB(255, 104, 104, 104),
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                labelText: "Senha",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
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
                const Color.fromARGB(255, 255, 255, 255),
              ),
              foregroundColor: WidgetStatePropertyAll(
                const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            onPressed: _login, // Função de login
            child: const Padding(
              padding: EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
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
