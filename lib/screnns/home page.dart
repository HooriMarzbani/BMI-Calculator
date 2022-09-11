import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _heightCnotroller = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI calculator',
            style: TextStyle(color: Colors.yellow, fontSize: 13.0)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90.0,
                  width: 110.0,
                  color: Colors.black,
                  child: TextField(
                    controller: _heightCnotroller,
                    style:
                        const TextStyle(color: Colors.yellow, fontSize: 35.0),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Height',
                        hintStyle: TextStyle(
                            fontSize: 35.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  height: 90.0,
                  width: 110.0,
                  color: Colors.black,
                  child: TextField(
                    controller: _weightController,
                    style:
                        const TextStyle(color: Colors.yellow, fontSize: 35.0),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mass',
                        hintStyle: TextStyle(
                            fontSize: 35.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {
              double height = double.parse(_heightCnotroller.text);
              double weight = double.parse(_weightController.text);
              setState(() {
                _bmiResult = weight / (height * height);
                if (_bmiResult < 18.5) {
                  _textResult = 'You are underweight!';
                } else if (_bmiResult < 25) {
                  _textResult = 'You body is fine';
                } else {
                  _textResult = 'You are obese!';
                }
              });
            },
            child: const Text(
              'Calculate',
              style: TextStyle(color: Colors.yellow, fontSize: 25.0),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            _bmiResult.toString(),
            style: const TextStyle(color: Colors.yellow, fontSize: 40.0),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Visibility(
            visible: _textResult.isNotEmpty,
            child: Text(
              _textResult,
              style: const TextStyle(
                color: Colors.yellow,
                fontSize: 23.0,
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          const RightBar(barwidth: 28.0),
          const RightBar(barwidth: 60.0),
          const RightBar(barwidth: 30.0),
          const LeftBar(barwidth: 28.0),
          const LeftBar(barwidth: 60.0),
          const LeftBar(barwidth: 28.0),
        ],
      ),
    );
  }
}
