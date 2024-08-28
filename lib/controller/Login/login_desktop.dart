import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/Cadastro/cadastro.dart';
import 'package:getwidget/getwidget.dart';

class LoginDesktop extends StatefulWidget {
  const LoginDesktop({super.key});

  @override
  State<LoginDesktop> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  // bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ 
        Expanded( 
          child: Image.asset(
            'assets/images/work.png',
            fit: BoxFit.cover,
            )),
            Expanded(
              child: Container( 
                constraints: const BoxConstraints(maxWidth: 21),
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [ 
                    Text(
                      'Bem-vindo de volta!',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text( 
                      'Acesse agora e descubra um mundo de possibilidades!',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 35,),
                    _NomeField(),
                    const SizedBox(height: 20,),
                    _SenhaField(),
                    const SizedBox(height: 25,),
                    /* _LembreteRow(_isChecked, (value){
                      setState(() {
                        _isChecked = value;
                      });
                    }), */
                    const SizedBox(height: 30,),
                    _LoginButton(),
                    const SizedBox(height: 15,),
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
            )
      ],
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
  final bool _isChecked;
  final Function(bool) _onChanged;
  
  _LembreteRow(this._isChecked, this._onChanged);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: _onChanged,
        ),
        Text('Lembre-me'),
      ],
    );
  }
}*/

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

