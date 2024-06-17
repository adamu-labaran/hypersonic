import 'package:flutter/material.dart';
import 'package:hypersonic/pages/login.dart';
import 'package:hypersonic/widget/support_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 40.0),
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
                child: TextField(
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
                child: TextField(
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
                child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Password')),
              ),

              SizedBox(height: 30),
              Center(
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
              SizedBox(height: 20.0),
              Row(
                children: [
                  Text(
                    'Alrady have an account?',
                    style: AppWidget.lightTextFieldStyyle(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()),);
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
    );
  }
}
