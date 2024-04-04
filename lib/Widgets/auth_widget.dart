import 'package:flutter/material.dart';
import 'package:themoviedb/theme/buttons_style.dart';
import 'package:themoviedb/utils/constants/auth_text_constants.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  bool _errormessage = false;
  final TextEditingController _usernamecontroller =
      TextEditingController(text: 'admin');
  final TextEditingController _passwordcontroller =
      TextEditingController(text: 'admin');

  void _auth() {
    if (_usernamecontroller.text == 'admin' &&
        _passwordcontroller.text == 'admin') {
      Navigator.pushReplacementNamed(context, '/home');
      setState(() {
        _errormessage = false;
      });
    } else {
      setState(() {
        _errormessage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextConst.appBarText,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _errormessage ? const SizedBox(height: 10) : const SizedBox(),
              _errormessage
                  ? const Center(
                      child: Text(
                        'Username or Password wrong',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    )
                  : const Text(''),
              const SizedBox(height: 20),
              TextConst.username,
              TextField(
                controller: _usernamecontroller,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  isCollapsed: true,
                  contentPadding: const EdgeInsets.all(9),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.3))),
                ),
              ),
              const SizedBox(height: 20),
              TextConst.password,
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.3))),
                  isCollapsed: true,
                  contentPadding: const EdgeInsets.all(9),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 15),
                      ),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(1, 180, 228, 1),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                    onPressed: _auth,
                    child: TextConst.elevationButtonLogin,
                  ),
                  const SizedBox(width: 15),
                  TextButton(
                    style: ButtonsStyle.linkStyle,
                    onPressed: () {},
                    child: TextConst.textButtonPassword,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextConst.loginmain,
              TextButton(
                style: ButtonsStyle.linkStyle,
                onPressed: () {},
                child: TextConst.registerButton,
              ),
              const SizedBox(height: 20),
              TextConst.sigenedUp,
              TextButton(
                style: ButtonsStyle.linkStyle,
                onPressed: () {},
                child: TextConst.verifyEmailButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
