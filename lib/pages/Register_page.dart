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
  bool _obscureText = true;
  bool _obscureText2 = true;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggle2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  @override
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
              Text('Nama Lengkap', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  hintText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 14, 137, 55),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email', style: TextStyle(fontSize: 18)),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 102, 185, 51),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            prefixIcon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('No HP', style: TextStyle(fontSize: 18)),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: nohpController,
                          decoration: InputDecoration(
                            hintText: 'No HP',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 102, 185, 51),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            prefixIcon: Icon(Icons.phone),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'No HP tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password', style: TextStyle(fontSize: 18)),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              color: Color.fromARGB(255, 121, 120, 120),
                              onPressed: _toggle,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 102, 185, 51),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Konfirmasi Password',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: confirmPasswordController,
                          obscureText: _obscureText2,
                          decoration: InputDecoration(
                            hintText: 'Konfirmasi Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText2
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              color: Color.fromARGB(255, 121, 120, 120),
                              onPressed: _toggle2,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 102, 185, 51),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Konfirmasi Password tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    backgroundColor: const Color.fromARGB(255, 102, 185, 51),
                    minimumSize: const Size(390, 60),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (passwordController.text ==
                          confirmPasswordController.text) {
                        Navigator.pushNamed(context, '/home', arguments: emailController.text);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Password tidak sama',
                              style: TextStyle(fontSize: 15),
                            ),
                            backgroundColor: Color.fromARGB(255, 255, 0, 0),
                            padding: const EdgeInsets.all(30),
                          ),
                        );
                      }
                    }
                  },
                  child: const Text(
                    'Daftar',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah memiliki akun? Silahkan'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login disini',
                      style: TextStyle(
                        color: Color.fromARGB(255, 102, 185, 51),
                      ),
                    ),
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
