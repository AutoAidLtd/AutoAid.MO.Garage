import 'package:autoaid_garage/utils/button.dart';
import 'package:autoaid_garage/utils/socket.dart';
import 'package:autoaid_garage/utils/textField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPageGarage extends StatefulWidget {
  const LoginPageGarage({super.key});

  @override
  _LoginPageGarageState createState() => _LoginPageGarageState();
}

class _LoginPageGarageState extends State<LoginPageGarage> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            alignedNumberTextField('Nhập số điện thoại của bạn'),
            const SizedBox(height: 16.0),
            alignedGradientButton(
                'Login',
                () => {
                      performLogin(context, phoneNumberController.text),
                    })
          ],
        ),
      ),
    );
  }

  void performLogin(BuildContext context, String phoneNumber) {
    if (true) {
      //Connect socket
      SocketManager socketManager = SocketManager();
      context.go('/home');
    }
  }
}
