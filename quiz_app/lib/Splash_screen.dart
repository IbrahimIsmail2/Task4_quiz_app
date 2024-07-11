import 'package:flutter/material.dart';
import 'package:quizz_app1/utils/images_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SplashScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  late Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C752E),
        scrolledUnderElevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          mediaQuery = constraints.biggest;

          return SingleChildScrollView(
            child: Container(
              height: mediaQuery.height,
              width: mediaQuery.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF2C752E),
                    Color.fromARGB(255, 72, 170, 75),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
                color: Color(0xFF2C752E),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset(aline),
                    ),
                  ),
                  Container(
                    height: mediaQuery.height * 0.64,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFECEC),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person,
                                    color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Username',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Username must not be empty";
                                } else if (value.length < 8) {
                                  return "Username must be at least 8 characters";
                                } else if (value[0].toUpperCase() != value[0]) {
                                  return "First letter must be uppercase";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.lock, color: Colors.grey),
                                suffixIcon: const Icon(Icons.visibility_off,
                                    color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Password',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password must not be empty";
                                } else if (value.length < 9) {
                                  return "Password must be at least 9 characters";
                                }
                                return null;
                              },
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Spacer(),
                              const Text(
                                'New to ITI Quiz App?',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 12,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Form is valid, proceed with login logic
                                // Add your login logic here
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              minimumSize: MaterialStateProperty.all(
                                Size(mediaQuery.width * 0.45, 45),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: Image.asset(fingerprint),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Use touch id',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 25),
                            child: StatefulBuilder(
                              builder: (context, setState) => Row(
                                children: [
                                  Checkbox(
                                    activeColor: Colors.green,
                                    value: isChecked,
                                    onChanged: (bool? value) =>
                                        setState(() => isChecked = value!),
                                  ),
                                  const Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
