import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hypersonic/widget/support_widget.dart';

// login page: this file handle sign in details for user
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top:20.0, left:20.0, right: 20.0, bottom:40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/train.png'),
              // user sign in details
              Center(child: Text('Sign In', style: AppWidget.semiboldTextFieldstyle(),)),
              Text('Email', style: AppWidget.semiboldTextFieldstyle(),),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F5F9),
                  borderRadius: BorderRadius.circular(10),
                  ),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none, hintText: 'Email')
                ),
              ),
             
              Text('password', style: AppWidget.semiboldTextFieldstyle(),),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F5F9),
                  borderRadius: BorderRadius.circular(10),
                  ),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none, hintText: 'Password')
                ),
              ),
              SizedBox(height: 10.0),
             Row(
                mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text('forget password?', style: TextStyle(color: Colors.green, fontSize: 18.0, fontWeight: FontWeight.w500,),),
               ],
             ),
             SizedBox(height: 30),            Center(
                child: Container(
                  width:MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(20),
                  decoration:BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(10),
                  ),
                    child: Center(child: Text('LOGIN', style: TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Text('Dont have account?', style: AppWidget.lightTextFieldStyyle(),),
                 Text(
                    'sign up',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
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