import 'package:edu_ui/auth/login.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var pass1 = true;
  var pass2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: const Color(0xFF1565C0),
          elevation: 0,
        ),
        body: Center(
          child: Container(
            color: Colors.grey[300],
            child: Stack(children: [
              Positioned(
                top: 0,
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF1565C0),
                  ),
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                       Text('logo',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                width: MediaQuery.of(context).size.width,
                height: 600,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 2)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFF1565C0),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          fillColor: Colors.grey[300],
                          filled: true,
                          hintText: 'Username',
                          prefixIcon: const Icon(Icons.account_circle),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          fillColor: Colors.grey[300],
                          filled: true,
                          hintText: 'Index',
                          prefixIcon: const Icon(Icons.task_rounded),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: pass1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                            fillColor: Colors.grey[300],
                            filled: true,
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.key),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (pass1 == true) {
                                    pass1 = false;
                                  } else {
                                    pass1 = true;
                                  }
                                });
                              },
                              icon: const Icon(Icons.remove_red_eye_outlined),
                            )),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: pass2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                            fillColor: Colors.grey[300],
                            filled: true,
                            hintText: 'Confirm Password',
                            prefixIcon: const Icon(Icons.verified_user_rounded),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (pass2 == true) {
                                    pass2 = false;
                                  } else {
                                    pass2 = true;
                                  }
                                });
                              },
                              icon: const Icon(Icons.remove_red_eye_outlined),
                            )),
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [Colors.blue, Color.fromARGB(255, 1, 83, 177)],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                )
                              ]),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have account?'),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      // ignore: prefer_const_constructors
                                      builder: (context) => LoginPage()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1565C0)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
