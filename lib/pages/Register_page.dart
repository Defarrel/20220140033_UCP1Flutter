import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nohpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/razer.png',
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      'Daftar Akun Baru',
                      style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
