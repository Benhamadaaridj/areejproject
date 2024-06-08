import 'package:flutter/material.dart';
import 'package:prj_1/Component/CustomButton.dart';
import 'package:prj_1/Component/CustomTextFormField.dart';
import 'package:prj_1/Component/Constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController matricule = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 65, 46, 67),
              Color.fromARGB(255, 236, 205, 241)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 201),
              const Text(
                "LOGIN",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              size5,
              CustomTextFormField(
                icc: const Icon(Icons.account_circle),
                mycontroller: matricule,
                hint: 'write your matricule ',
                obc: false,
                validator: (val) {
                  if (val == "") {
                    return "can't to be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                icc: const Icon(Icons.security),
                mycontroller: pass,
                hint: 'write your password',
                obc: false,
                validator: (val) {
                  if (val == "") {
                    return "can't to be empty";
                  }
                  return null;
                },
              ),
              size5,
              CustomButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                text: "Login",
              ),
              SizeG,
              const Row(
                children: [
                  Icon(Icons.error),
                  Padding(
                    padding: EdgeInsets.only(left:14),
                    child: tes1,
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
