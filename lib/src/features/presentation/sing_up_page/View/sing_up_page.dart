import 'package:flutter/material.dart';
import 'package:udemyyyyy/src/colors/colors.dart';
import 'package:udemyyyyy/src/features/presentation/commons_widgets/back_button.dart';
import 'package:udemyyyyy/src/features/presentation/commons_widgets/header_text.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder( builder: (BuildContext context) {
          return backButton(context, Colors.black);
        })),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              headerText('Create an account', Colors.black, FontWeight.bold, 30.0),
                  _usernameinput(context),
                  _emailinput(context),
                  _phoneinput(context),
                  _dateofbirthinput(context),
                  _passwordinput(context),
                  _singUpButton(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Text(
                  'By clicking Sing up you agree to the following Terms and Conditions and Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0))
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameinput (BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: painput,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Username',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _emailinput (BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: painput,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _phoneinput (BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: painput,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Phone',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _dateofbirthinput (BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: painput,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: 'Date of Birth',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _passwordinput (BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: painput,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _singUpButton(BuildContext context) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: const EdgeInsets.only(top: 40.0),
    child: ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: const Text(
        'Sing up',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
        ),
      ),
    ),
  );
}