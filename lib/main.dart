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
      home: DefaultTabController(
        length: 2, // Número de abas
        child: Scaffold(
          //BACKGROUND
          backgroundColor: Colors.black,

          appBar: const TabBar(
            //ALTERAR CORES DA TAB BAR
            indicatorWeight: 2,
            labelColor: Color.fromARGB(255, 214, 175, 175),
            unselectedLabelColor: Color.fromARGB(255, 94, 94, 94),
            indicatorColor: Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(text: "Login"),
              Tab(text: "Cadastro"),
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
                            const SizedBox(
                                height: 25), // Espaço entre a imagem e o texto
                            const Text(
                              "Bem-vindo ao ActivityOne!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                              textAlign:
                                  TextAlign.left, // Alinha o texto à esquerda
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
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.people_alt),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255,
                                      255)), // Cor da borda quando focado
                            ),
                            labelText: "Usuário"),
                      ),
                    ),
                    const SizedBox(height: 35),
                    //CAMPO DE TEXTO 2
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255,
                                      255)), // Cor da borda quando focado
                            ),
                            labelText: "Senha"),
                      ),
                    ),
                    const SizedBox(height: 35),
                    //BOTAO PRETO COM TEXTO BRANCO 'LOGIN'
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
                        child: const Padding(
                          padding:
                              EdgeInsets.fromLTRB(110.0, 15.0, 110.0, 15.0),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                  ],
                ),
              ),
              // Segunda aba - Pode usar o mesmo conteúdo ou personalizar
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Vamos começar o seu cadastro.',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255,
                                    255)), // Cor da borda quando focado
                          ),
                          labelText: "Nome completo"),
                    ),
                    // Adicione outros campos de cadastro aqui, se desejar
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
