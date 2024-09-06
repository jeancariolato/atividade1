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
          backgroundColor: Colors.black,
          appBar: TabBar(
            //ALTERAR CORES DA TAB BAR
            indicatorWeight: 2,
            labelColor: const Color.fromARGB(255, 214, 175, 175),
            unselectedLabelColor: const Color.fromARGB(255, 94, 94, 94),
            indicatorColor: const Color.fromARGB(255, 255, 255, 255),
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
                    SizedBox(height: 35),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Alinha o texto à esquerda
                        children: [
                          Image.network(
                            "https://i.pinimg.com/736x/f7/75/23/f7752374579381577cc4f89c28f0b134.jpg",
                            width: double
                                .infinity, // Faz a imagem ocupar a largura máxima
                            fit: BoxFit
                                .cover, // Ajusta a imagem para cobrir o espaço
                          ),
                          SizedBox(
                              height: 10), // Espaço entre a imagem e o texto
                          Text(
                            "Bem-vindo ao App Atividade1!",
                            style: TextStyle(color: Colors.white, fontSize: 35),
                            textAlign:
                                TextAlign.left, // Alinha o texto à esquerda
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 35),
                    //CAMPO DE TEXTO 1
                    Container(
                      width: 300,
                      height: 40,
                      child: TextField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.people_alt),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255,
                                      255)), // Cor da borda quando focado
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
                            prefixIcon: Icon(Icons.lock),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255,
                                      255)), // Cor da borda quando focado
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
                          padding: const EdgeInsets.fromLTRB(
                              110.0, 15.0, 110.0, 15.0),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                  ],
                ),
              ),
              // Segunda aba - Pode usar o mesmo conteúdo ou personalizar
              Center(
                child: Column(
                  children: [
                    Text('Página de Cadastro'),
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
