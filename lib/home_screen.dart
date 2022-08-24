import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset :false,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:  Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'La Vie',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 45.0,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                        labelText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                const SizedBox(
                  height: 400,
                  child: Center(
                    child: Text(
                      'Thank You For This Nice Experience',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}