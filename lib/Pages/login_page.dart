import 'package:daviet_app/Pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final password_controller = TextEditingController();
  final rollNo_controller = TextEditingController();
  bool _obsecure = true;

  @override
  void dispose() {
    rollNo_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xfffffffc),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(
                    image: AssetImage(
                        "lib/images/college_logo-removebg-preview.png")),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      TextField(
                        controller: rollNo_controller,
                        decoration:
                            const InputDecoration(labelText: "Roll no."),
                      ),
                      TextField(
                        obscureText: _obsecure,
                        controller: password_controller,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                _obsecure = ! _obsecure;
                                setState(() {
                                });
                              },
                              icon: Icon((_obsecure)
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      InkWell(
                        onTap: () => login_button_pressed(context),
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 16, right: 16),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                              gradient: LinearGradient(colors: [
                                Color(0xff8E54E9),
                                Color(0xff4776E6),
                              ])),
                          child: const Text(
                            "Log in",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 26,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  login_button_pressed(contex) {
    String rollNo = rollNo_controller.text;
    String password = password_controller.text;
    if (rollNo == "142/19" && password == "Pranav1234") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Homepage()));
    } else {
      showDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
                title: const Text("Log in Failed"),
                content: const Text("Invalid Credentials"),
                actions: [
                  CupertinoDialogAction(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ));
    }
  }
}
