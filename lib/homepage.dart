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
        body: ListView(padding: EdgeInsets.all(15.0), children: [
          Column(children: const [
            Text(
              "Get Permision",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
          ]),
          // ignore: sort_child_properties_last
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 114),
            child: Text(
              'Send request to get started',
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: const [
            Text(
              'Firstname',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          Center(
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                filled: true,
                fillColor: Colors.white,
                hintText: '@ Name',
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(children: const [
            Text(
              'Lastname',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          Center(
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Surname',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: const [
            Text(
              'Date of Birth',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          Center(
            child: ElevatedButton(
              onPressed: () {}, //=> selectedDate(context),
              child: Text(
                'date of birth',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 180, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(children: const [
            Text(
              'Gender',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(children: const [
            ChoiceChip(
              label: Text(
                'male',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 4, 50, 87),
                ),
              ),
              selectedColor: Colors.white,
              selected: true,
            ),
            SizedBox(
              width: 10,
            ),
            ChoiceChip(
              label: Text(
                'female',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 4, 50, 87),
                ),
              ),
              selectedColor: Colors.white,
              selected: true,
            ),
          ]),

          SizedBox(
            width: 10,
          ),
          Row(children: [
            Text(
              'Email',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          Center(
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email',
              ),
            ),
          ),
        ]));
  }
}
