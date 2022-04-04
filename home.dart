import 'package:flutter/material.dart';
import 'login.dart';
import 'singup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/h1.jpg"))),
              ),
              Column(
                children: const [
                  Text(
                    "Bags Shop",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(199, 96, 68, 2),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    color: Color.fromARGB(199, 96, 68, 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  // creating the signup button
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(199, 96, 68, 2),
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color.fromARGB(199, 96, 68, 2),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
