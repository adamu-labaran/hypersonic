import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hypersonic/pages/login.dart';
import 'package:hypersonic/widget/support_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? name, email, password;
  // using text editing controller to store user name to firebase server
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController mailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  // creating global key: which will help to change the state of the respective textfield
  final _formkey = GlobalKey<FormState>();

  // this function handling the sing up botton and using try catch to inform the user that uses the same email for registration
  registration() async {
    if (password != null && name != null && email != null) {
      try {
        // ignore: unused_local_variable
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email!, password: password!);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text('Resgistered Sucessfully',
                  style: TextStyle(fontSize: 20.0))),
        );
      } on FirebaseException catch (e) {
        if (e.code == 'week-password') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.redAccent,
                content: Text('Password provided is too weak',
                    style: TextStyle(fontSize: 20.0))),
          );
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.redAccent,
                content: Text('Account already exists',
                    style: TextStyle(fontSize: 20.0))),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 40.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/train.png'),
                // user sign in details
                Center(
                  child: Text(
                    'Sign up',
                    style: AppWidget.semiboldTextFieldstyle(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'please enter the details below',
                  style: AppWidget.lightTextFieldStyyle(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Name',
                  style: AppWidget.semiboldTextFieldstyle(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F5F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                      // validating required form field
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your name';
                        }
                        return null;
                      },
                      controller: namecontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Full Name')),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Email',
                  style: AppWidget.semiboldTextFieldstyle(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F5F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                      // validating required form field
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your email';
                        }
                        return null;
                      },
                      controller: mailcontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email')),
                ),
                SizedBox(height: 20.0),
                Text(
                  'password',
                  style: AppWidget.semiboldTextFieldstyle(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F5F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                      // validating required form field
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your name';
                        }
                        return null;
                      },
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Password')),
                ),

                SizedBox(height: 30),
                GestureDetector(
                  // validating signup botton
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        name = namecontroller.text;
                        email = mailcontroller.text;
                        password = passwordcontroller.text;
                      });
                    }
                    registration();
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Alrady have an account?',
                      style: AppWidget.lightTextFieldStyyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LogIn()),
                        );
                      },
                      child: Text(
                        'sign In',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
