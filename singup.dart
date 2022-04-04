import 'package:flutter/material.dart';

import 'login.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, //(عشان لما تيجي تكتب بالصفحه في خانه الكتابة مثلا في الايميل تضلها صفحة ثابته )
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0, //بمنع ظهور الفرق الظاهر الي بين ال appbar and body
        backgroundColor: Colors.white,
        leading: IconButton(
          //بتعملي بتون لايقون عشان هان ما تضغطي ع البتن يبين انه بضغط مش شكل بس
          onPressed: () {
            Navigator.pop(context);
          }, //هان رجع للصفحه الي قبل
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Color.fromARGB(199, 96, 68, 2),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 40), //من اجل ابعاد الصفحة بس هان ابعاد الكونتير
          height: MediaQuery.of(context).size.height - 100,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
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
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Full Name',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Container(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {},
                    color: Color.fromARGB(199, 96, 68, 2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      " Sing up",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  SizedBox(width: 3),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      " login",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(199, 96, 68, 2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
