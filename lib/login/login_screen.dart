// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController =
      TextEditingController(text: "");
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.language,
                    color: Color(
                      0xFF65849D,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text("Рус"),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(
                      0xFF65849D,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: (Platform.isIOS || Platform.isAndroid)
                      ? MediaQuery.of(context).size.width / 1.2
                      : 500,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/logo.svg'),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFA1B4D0).withOpacity(0.25),
                          ),
                        ),
                        hintText: "Login",
                        errorText: "Данный номер не зарегестрирован!",
                        hintStyle: TextStyle(
                          color: Color(0xFF65849D),
                        ),
                        fillColor: Color(0xFF65849D),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFA1B4D0).withOpacity(0.25),
                          ),
                        ),
                        hintText: "Password",
                        errorText: "Неверный пароль!",
                        hintStyle: TextStyle(
                          color: Color(0xFF65849D),
                        ),
                        fillColor: Color(0xFF65849D),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Забыли пароль?",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0C4471),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    FilledButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(
                            (Platform.isIOS || Platform.isAndroid)
                                ? MediaQuery.of(context).size.width / 1.6
                                : 300,
                            45,
                          ),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xFF448BF5),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("ВОЙТИ"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
