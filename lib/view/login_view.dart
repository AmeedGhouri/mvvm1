import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_names.dart';
import 'package:mvvm/view/Home_screen.dart';
import '../utils/utills.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  FocusNode emailFocusNode=FocusNode();
  FocusNode passwordFocusNode=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: 
      Column(
        children: [
          TextFormField(
            controller: _emailController,
            focusNode: emailFocusNode,
            decoration: InputDecoration(
              hintText: 'Email',
              labelText: 'Email',
              prefixIcon: Icon(Icons.alternate_email_rounded),
            ),
            onFieldSubmitted: (value){
              Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
            },
          ),
          TextFormField(
            controller: _passwordController,
            focusNode: passwordFocusNode,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              prefixIcon: Icon(Icons.password_rounded),
              suffixIcon: Icon(Icons.visibility_off_outlined)
            ),
          )
        ],
      )),
      );
  }
}
