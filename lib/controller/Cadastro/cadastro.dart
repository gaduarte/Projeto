import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/Cadastro/cadastro_mobile.dart';
import 'package:flutter_application_1/controller/Cadastro/cadastro_desktop.dart';
import 'package:flutter_application_1/controller/Cadastro/cadastro_tablet.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  final String? image;

  const CadastroPage({super.key, required this.title, this.image});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();

  final _nomeCtrl = TextEditingController();
  final _senhaCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue, 
      ),
      body: LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < 600){
            return  CadastroMobile();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900){
            return CadastroTablet();
          } else {
            return const CadastroDesktop();
          }
        },
      )
    );
  }
}