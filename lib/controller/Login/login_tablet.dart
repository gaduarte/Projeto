import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/Cadastro/cadastro.dart';
import 'package:getwidget/getwidget.dart';

class LoginTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SizedBox(
              width: 500, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Bem-vindo de volta! ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    'Acesse agora e descubra um mundo de possibilidades!',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 35,),
                  Row(
                    children: [
                      Expanded(
                        child: _NomeField(),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: _SenhaField(),
                      ),
                    ],
                  ),
                 /*  const SizedBox(height: 25,),
                  _LembreteRow(), */
                  const SizedBox(height: 30,),
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

/* class _LembreteRow extends StatelessWidget {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        Text('Lembre-me'),
      ],
    );
  }
} */

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