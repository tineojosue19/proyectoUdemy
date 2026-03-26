import 'package:flutter/material.dart';
import 'package:udemyyyyy/src/features/presentation/commons_widgets/header_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const BackButton(color: Colors.black),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              headerText('Forgot Password?', Colors.black, FontWeight.bold, 30.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Please enter your email address. You will receive a link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _emailInput(),
              _sendButton(context),

            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(227, 230, 237, 1.0),
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: const EdgeInsets.only(top: 40.0),
    child: ElevatedButton(
      onPressed: () {
        _showAlert(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: const Text(
        'Send',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
        ),
      ),
    ),
  );
}

void _showAlert( BuildContext context ) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        content: Container(
          height: 350,
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                  'https://st5.depositphotos.com/86663434/71276/v/450/depositphotos_712760558-stock-illustration-illustration-vector-graphic-cartoon-padlock.jpg'
                ),
                width: 130.0,
                height: 130.0,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: headerText('Your password has been sent', Theme.of(context).primaryColor, FontWeight.bold, 20.0)
              ),
              Container (
                margin: EdgeInsets.all(15.0),
                child: Text("You'll shortly receive an email with a code to setup a new password.",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0)),
              ),
              _doneButton(context)
            ],
          ),
        ),
      );
    }
  );
}

Widget _doneButton(BuildContext context) {
  return Container(
      width: 370.0,
      height: 45.0,
      margin: const EdgeInsets.only(top: 40.0),
      child: ElevatedButton(
          onPressed: () {
             Navigator.pushNamed(context, 'login');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: const Text(
            'Done',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          )
      )
  );
}