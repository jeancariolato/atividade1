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
              Center(
                child: Column(
                  children: [
                    //CARREGAR IMAGEM
                    const SizedBox(height: 200),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Alinha o texto à esquerda
                          children: [
                            Image.asset(
                              "images/logo.png",
                              // Carregando a imagem local
                              width: 65, // Faz a imagem ocupar a largura máxima
                              fit: BoxFit
                                  .cover, // Ajusta a imagem para cobrir o espaço
                            ),
                            SizedBox(
                                height: 25), // Espaço entre a imagem e o texto
                            Container(
                              child: Text(
                                "Bem-vindo ao ActivityOne!", // The text to be displayed
                                // Apply Google Fonts to the text
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 35),
                    //CAMPO DE TEXTO 1
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: const TextField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.people_alt),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255,
                                    255)), // Cor da borda quando focado
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
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255,
                                    255)), // Cor da borda quando focado
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
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255)),
                        foregroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 0, 0, 0)),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.login), // Ícone do login
                            SizedBox(width: 8), // Espaço entre ícone e texto
                            Text(
                              "Enter",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Segunda aba - Pode usar o mesmo conteúdo ou personalizar
              Padding(
                padding: const EdgeInsets.all(35),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
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
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255,
                                        255)), // Cor da borda quando focado
                              ),
                              labelText: "Nome completo"),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255,
                                        255)), // Cor da borda quando focado
                              ),
                              labelText: "Email"),
                        ),
                        //CAMPO DO CPF
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255,
                                        255)), // Cor da borda quando focado
                              ),
                              labelText: "CPF"),
                        ),
                        //CAMPO DE NOVA SENHA
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255,
                                        255)), // Cor da borda quando focado
                              ),
                              labelText: "Nova senha"),
                        ),
                        SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                85.0, 10.0, 85.0, 10.0),
                            child: Row(
                              children: [
                                // Ícone do login // Espaço entre ícone e texto
                                Text(
                                  "Prosseguir",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
