import 'package:flutter/material.dart';

class TeacherLectures extends StatelessWidget {
  const TeacherLectures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        title: const Text('Select a time slot'),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            child: Stack(children: [
              Positioned(
                top: 0,
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[900],
                  ),
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(height: 7),
                      Text('Geomatics Engineering Academic - UofK',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                width: MediaQuery.of(context).size.width,
                height: 570,
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
                      Text(
                        'Welcome..!',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.purple[800],
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [Colors.purple, Color(0xff4a148c)],
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
                            'Login',
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
                          const Text('Don\'t have account?'),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
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
        ],
      ),
    );
  }
}
