import 'package:emplyeesapp/Authentication/ViewModel/User_Provider.dart';
import 'package:emplyeesapp/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _UserProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'login',
          style: AppTheme.textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 360,
              child: TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                    hintText: 'email id',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 360,
              child: TextFormField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                controller: _passwordcontroller,
                decoration: InputDecoration(
                    hintText: 'password',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    )),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  UserProvider().login(
                      _emailcontroller.text, _passwordcontroller.text, context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 31, 183, 36),
                  shape: StadiumBorder(),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: _UserProvider.isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        "login now",
                        style: AppTheme.textTheme.bodyMedium,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
