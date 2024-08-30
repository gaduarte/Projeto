import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/Cadastro/cadastro.dart';
import 'package:flutter_application_1/controller/Login/login_desktop.dart';
import 'package:getwidget/getwidget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  final String? image;

  const LoginPage({super.key, required this.title, this.image});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _nome = TextEditingController();
  final _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white60, Colors.white10],
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints){
            if(constraints.maxWidth > 600){
              return  LoginDesktop();
            } else {
              return Center(
                child: SingleChildScrollView( 
                  child: Padding( 
                    padding: const EdgeInsets.all(30),
                    child: Center( 
                      child: SizedBox( 
                        width: 300,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [ 
                            Text( 'Bem-vindo de volta! ',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              'Acesse agora e descubra um mundo de possibilidades!',
                              style: TextStyle( 
                                fontSize: 23,
                                color: Colors.black,
                                fontWeight:FontWeight.w700, 
                              ),
                            ),
                            const SizedBox(height: 35,),
                            _NomeField(),
                            const SizedBox(height: 20,),
                            _SenhaField(),
                            const SizedBox(height: 25,),
                            _LoginButton(),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Padding( 
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: TextButton( 
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CadastroPage(title: '')
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Ainda não tem conta? Registre-se agora',
                                    style: TextStyle(
                                      color: Colors.grey
                                      ),
                                  ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
        )
      )
    );
  }
}     
      
      


class _NomeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, preencha todos os campos';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
        hintText: 'Nome',
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }
}

class _SenhaField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, preencha todos os campos';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
        hintText: 'Senha',
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GFButton(
      onPressed: () {},
      text: "Entrar",
      color: Colors.blue,
      size: GFSize.LARGE,
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      hoverColor: Colors.blueAccent, // Cor de hover azul claro
    );
  }
}