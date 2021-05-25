import 'package:bmi/constant/app_constants.dart';
import 'package:bmi/widgets/left_bar.dart';
import 'package:bmi/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: accent_color,
            fontWeight: FontWeight.w300,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: main_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 130,
                    child: TextField(
                      controller: _heightController,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: accent_color),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Height',
                          hintStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Colors.white.withOpacity(.8))),
                    )),
                Container(
                    width: 130,
                    child: TextField(
                      controller: _weightController,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: accent_color),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Weight',
                          hintStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Colors.white.withOpacity(.8))),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h);
                  if (_bmiResult > 25) {
                    _textResult = "you\'re over Weight";
                  } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                    _textResult = "you have normal weight";
                  } else {
                    _textResult = "you\'re under weight";
                  }
                });
              },
              child: Container(
                  child: Text('Calculate',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w300,
                          color: accent_color))),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                child: Text(_bmiResult.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: accent_color))),
            SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                  child: Text(_textResult,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: accent_color))),
            ),
            SizedBox(
              height: 10,
            ),
            LaftBar(
              barWidth: 50,
            ),
            SizedBox(
              height: 10,
            ),
            LaftBar(
              barWidth: 90,
            ),
            SizedBox(
              height: 10,
            ),
            LaftBar(
              barWidth: 80,
            ),
            SizedBox(
              height: 10,
            ),
            RightBar(
              barWidth: 30,
            ),
            SizedBox(
              height: 10,
            ),
            RightBar(
              barWidth: 80,
            ),
          ],
        ),
      ),
    );
  }
}
