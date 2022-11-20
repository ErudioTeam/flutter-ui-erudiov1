import 'package:flutter/material.dart';
import 'dart:convert';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Home/homepage.dart';
import '../../Signup/signup_screen.dart';
import 'package:http/http.dart' as http;
import 'package:erudiov1/models/Tokens.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginv1(String email , password) async {

    // String username = 'ismail';
    // String lpassword = 'ism12344';
    String credentials = "ismail:ism12344";
    String basicAuth = 'Basic ' + base64Encode(utf8.encode(credentials));

    var response = await http.post(
      Uri.parse('http://103.186.185.127:8080/auth/signin'),
      headers: <String, String>{'authorization': basicAuth},
      body: {'Email': email, 'Password': password},
    );

    if (response.statusCode == 200)
      {
        var data = jsonDecode(response.body.toString());
        Map<String,dynamic> map = jsonDecode(response.body.toString());

        AuthToken auth  = AuthToken.fromJson(map);
        print (auth.message);
        print (auth.data!.tokens?.accessToken?.token.toString());

      //  auth = data.map<AuthToken> df
        //for(data in data) {

        //}
        print(data['data']);
        print(data['data']);
        print ("login Successful");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  HomeScreen()),);


      }
    else
      {
        print ("Incorrect UserId or Password");

      }
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                loginv1(emailController.text.toString(), passwordController.text.toString());
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
