import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:register_time/core/theme/app_color.dart';
import 'package:register_time/widgets/button.dart';
import 'package:register_time/widgets/edit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF041643),
      body:
          !isLoading
              ? Center(
                child: Container(
                  height: 350,
                  width: MediaQuery.sizeOf(context).width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EditInput(
                        title: 'Email',
                        hintText: 'name@email.com',
                        controller: emailController,
                      ),
                      EditInput(
                        title: 'Password',
                        hintText: 'Password',
                        obscureText: true,
                        controller: passwordController,
                      ),
                      ButtonProprio(
                        width: 300,
                        title: 'Login',
                        onClick: () async {
                          setState(() {
                            isLoading = true;
                          });

                          Duration(milliseconds: 30000);

                          setState(() {
                            isLoading = false;
                          });

                          context.go('/home');
                        },
                      ),
                      Row(
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: TextStyle(
                              color: PaletaCores.textoNegrito,
                              fontFamily: 'Axiforma',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            ' Sign up',
                            style: TextStyle(
                              color: PaletaCores.textoNegrito,
                              fontFamily: 'Axiforma',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              : Center(child: CircularProgressIndicator()),
    );
  }
}
