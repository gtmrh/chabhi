// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:chabhi/widget/strings.dart';
import 'package:flutter/material.dart';

import '../../../widget/app_logo.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _mobileCtrl;
  late final TextEditingController _emailCtrl;
  late final TextEditingController _pswrdCtrl;
  late bool _passwordVisible;
  late bool _showSignup;

  @override
  void initState() {
    _nameCtrl = TextEditingController();
    _mobileCtrl = TextEditingController();
    _emailCtrl = TextEditingController();
    _pswrdCtrl = TextEditingController();
    _passwordVisible = false;
    _showSignup = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/design_bg.png"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              AppLogo(),
              SizedBox(
                height: 50,
              ),
              _showSignup ? signup_form() : login_form()
            ],
          ),
        ),
      ),
    );
  }

  inputForm() {
    if (_showSignup) {
      return signup_form;
    } else
      login_form;
  }

  signup_form() {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Container(
              // margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    nameField(),
                    SizedBox(height: 5),
                    mobileNoField(),
                    SizedBox(
                      height: 5,
                    ),
                    emailField(),
                    SizedBox(height: 25),
                    passwordField(),
                    SizedBox(height: 20),
                    signupFormBtn()
                  ],
                ),
              ),
            )),
      ),
    );
  }

  login_form() {
    return Align(
      alignment: Alignment.center,
      child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  mobileNoField(),
                  SizedBox(
                    height: 5,
                  ),
                  passwordField(),
                  SizedBox(height: 20),
                  loginFormBtn()
                ],
              ),
            ),
          )),
    );
  }

  nameField() {
    return Center(
      child: TextFormField(
        scrollPadding: EdgeInsets.only(bottom: 40),
        controller: _nameCtrl,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: Colors.black12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  style: BorderStyle.solid, color: Colors.black12, width: 1.0),

              //borderSide: const BorderSide(),
            ),
            hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: textFont),
            // filled: true,
            // fillColor: Color.fromARGB(255, 221, 232, 254),
            hintText: 'Your Name'),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        maxLength: 100,
      ),
    );
  }

  mobileNoField() {
    return Center(
      child: TextFormField(
        scrollPadding: EdgeInsets.only(bottom: 40),
        controller: _mobileCtrl,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.phone_android,
              color: Colors.black12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  style: BorderStyle.solid, color: Colors.black12, width: 1.0),

              //borderSide: const BorderSide(),
            ),
            hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: textFont),
            // filled: true,
            // fillColor: Color.fromARGB(255, 221, 232, 254),
            hintText: 'Mobile Number'),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        maxLength: 10,
      ),
    );
  }

  emailField() {
    return Center(
      child: TextFormField(
        scrollPadding: EdgeInsets.only(bottom: 40),
        controller: _emailCtrl,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: Colors.black12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  style: BorderStyle.solid, color: Colors.black12, width: 1.0),

              //borderSide: const BorderSide(),
            ),
            hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: textFont),
            // filled: true,
            // fillColor: Color.fromARGB(255, 221, 232, 254),
            hintText: 'Email Id'),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  passwordField() {
    return Center(
      child: TextFormField(
        scrollPadding: EdgeInsets.only(bottom: 40),
        controller: _pswrdCtrl,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  style: BorderStyle.solid, color: Colors.black12, width: 1.0),
            ),
            hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: textFont),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                )),
            hintText: 'Password'),
        textInputAction: TextInputAction.done,
      ),
    );
  }

  signupFormBtn() {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 180,
          child: ElevatedButton(
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                  // foregroundColor: MaterialStateProperty.all<Color>(btnColor),
                  backgroundColor: MaterialStateProperty.all<Color>(btnColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: btnColor)))),
              onPressed: () async {
                // login();
                _showSignup = true;
              }),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          ALREADY_SIGNIN,
          style: TextStyle(
              color: textColor, fontFamily: textFont, fontSize: TextFont16),
        ),
        SizedBox(
          height: 20,
        ),

        InkWell(
          onTap: () {
            setState(() {
              _showSignup = false;
            });
          },
          child: Container(
            height: 50,
            width: 180,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(
                    color: textColor,
                    fontSize: TextFont20,
                    fontFamily: textFont),
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                    color: borderColor, style: BorderStyle.solid, width: 2),
                borderRadius: BorderRadius.circular(10)),
          ),
        )
        // SizedBox(
        //   height: 50,
        //   width: 180,
        //   child: ElevatedButton(
        //       child: Text(
        //         "Login",
        //         style: TextStyle(fontSize: 20),
        //       ),
        //       style: ButtonStyle(
        //           foregroundColor:
        //               MaterialStateProperty.all<Color>(Colors.white),
        //           // backgroundColor: MaterialStateProperty.all<Color>(btnColor),
        //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //               RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(5.0),
        //             side: BorderSide(color: btnColor),
        //           ))),
        //       onPressed: () async {
        //         // login();
        //       }),
        // ),
      ],
    );
  }

  loginFormBtn() {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 180,
          child: ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                  // foregroundColor: MaterialStateProperty.all<Color>(btnColor),
                  backgroundColor: MaterialStateProperty.all<Color>(btnColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: btnColor)))),
              onPressed: () async {
                // login();
                // _showSignup = false;
              }),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            print("Forget Pasword");
            _forgetPassDialog(context);
          },
          child: Text(
            "Forget Password?",
            style: TextStyle(
                color: textColor, fontFamily: textFont, fontSize: TextFont16),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Or",
          style: TextStyle(
              color: textColor, fontFamily: textFont, fontSize: TextFont16),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _showSignup = true;
            });
          },
          child: Container(
            height: 50,
            width: 180,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: textColor,
                    fontSize: TextFont20,
                    fontFamily: textFont),
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                    color: borderColor, style: BorderStyle.solid, width: 2),
                borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }

  Future<void> _forgetPassDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField in Dialog'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  //  valueText = value;
                });
              },
              //  controller: _textFieldController,
              decoration: InputDecoration(hintText: "Text Field in Dialog"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    //  codeDialog = valueText;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }
}
