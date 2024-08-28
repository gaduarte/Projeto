import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/Login/login_mobile.dart';
import 'package:flutter_application_1/controller/Login/login_desktop.dart';
import 'package:flutter_application_1/controller/Login/login_tablet.dart';

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
            if(constraints.maxWidth < 600){
              return  LoginMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900){
              return LoginTablet();
            } else {
              return const LoginDesktop();
            }
          },
        ),
      ),
    );
  }
}
