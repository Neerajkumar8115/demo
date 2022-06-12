// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future<void> selectedDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2050),
  //   );
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 51, 246),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Center(
              child: Text(
                "Get Permision",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(
              // ignore: sort_child_properties_last
              child: Text(
                'Send request to get started',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Name',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Surname',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {}, //=> selectedDate(context),
                child: Text(
                  'date of birth',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ChoiceChip(
              label: Text(
                'male',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 4, 50, 87),
                ),
              ),
              selectedColor: Colors.white,
              selected: true,
            ),
            SizedBox(
              height: 10,
            ),
            ChoiceChip(
              label: Text(
                'female',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 4, 50, 87),
                ),
              ),
              selectedColor: Colors.white,
              selected: true,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
