import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [

            Image(
              image: const AssetImage('images/logo.png'),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            Expanded(

                child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 239, 236, 236),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),

              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
                child: Column(
                  children: [

                    const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),

                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          )),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),

                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 140),

                      child: Row(
                        children: [
                          const Text(
                            'New to quiz app?',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green),
                              )),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: const StadiumBorder(),
                            elevation: 10,
                            shadowColor: Colors.grey,
                            minimumSize: const Size.fromHeight(60)),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fingerprint,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    const Text(
                      'Use Touch ID',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Colors.green,
                        ),

                        const Text(
                          'Remember me',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forget password?',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.green),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}
