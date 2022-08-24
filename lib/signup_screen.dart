import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var emailControl = TextEditingController();
  var passwordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset :false,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:  Column(
              children: [
                const Text(
                  'La Vie',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('sign');
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.green, fontSize: 18),

                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('log');
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: Colors.black26, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: firstName,
                  decoration: const InputDecoration(
                      labelText: 'First Name',
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: lastName,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Last Name',
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailControl,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Enter your email',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordControl,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Enter Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordControl,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'confirm password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed('home');
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}