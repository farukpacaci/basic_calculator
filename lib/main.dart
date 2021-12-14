import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController firstNumber = TextEditingController();
  TextEditingController secondNumber = TextEditingController();
  double result = 0;
  void adittionFun() {
    setState(() {
      if (firstNumber.text == "") {
        firstNumber.text = 0.toString();
      }
      if (secondNumber.text == "") {
        secondNumber.text = 0.toString();
      }
      result =
          (double.parse(firstNumber.text) + double.parse(secondNumber.text));
      firstNumber.clear();
      secondNumber.clear();
    });
  }

  void subtractionFun() {
    setState(() {
      if (firstNumber.text == "") {
        firstNumber.text = 0.toString();
      }
      if (secondNumber.text == "") {
        secondNumber.text = 0.toString();
      }
      result =
          (double.parse(firstNumber.text) - double.parse(secondNumber.text));
      firstNumber.clear();
      secondNumber.clear();
    });
  }

  void multiplicationFun() {
    setState(() {
      if (firstNumber.text == "") {
        firstNumber.text = 0.toString();
      }
      if (secondNumber.text == "") {
        secondNumber.text = 0.toString();
      }
      result =
          (double.parse(firstNumber.text) * double.parse(secondNumber.text));
      firstNumber.clear();
      secondNumber.clear();
    });
  }

  void divisionFun() {
    setState(() {
      if (firstNumber.text == "") {
        firstNumber.text = 0.toString();
      }
      if (secondNumber.text == "") {
        secondNumber.text = 0.toString();
      }
      result =
          (double.parse(firstNumber.text) / double.parse(secondNumber.text));
      firstNumber.clear();
      secondNumber.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffede7f6),
      appBar: AppBar(
        title: const Text("Basic Calculator"),
        centerTitle: true,
        backgroundColor: const Color(0xff9c27b0),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: screenHeight * 0.02,
                  top: screenHeight * 0.1,
                ),
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color(0xff9c27b0),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 3,
                        color: Color(0xffbbb5c3),
                        offset: Offset(-5, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.05, 0, screenWidth * 0.05, 0),
                    child: Center(
                      child: TextField(
                        controller: firstNumber,
                        onTap: () {
                          result = 0;
                        },
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          hintText: "First Number",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                          hoverColor: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ),
              ),
              //First Number TextField
              Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.08,
                decoration: BoxDecoration(
                  color: const Color(0xff9c27b0),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 3,
                      color: Color(0xffbbb5c3),
                      offset: Offset(-5, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.05, 0, screenWidth * 0.05, 0),
                  child: Center(
                    child: TextField(
                      controller: secondNumber,
                      onTap: () {
                        result = 0;
                      },
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Second Number",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hoverColor: Colors.white,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ),
              //Second Number TextField
              Padding(
                padding: EdgeInsets.only(
                    bottom: screenHeight * 0.1, top: screenHeight * 0.04),
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color(0xffd05ce3),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 3,
                        color: Color(0xffbbb5c3),
                        offset: Offset(-5, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.05, right: screenWidth * 0.05),
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          result.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //Result Text
              SizedBox(
                width: screenWidth * 0.8,
                height: screenHeight * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                      child: GestureDetector(
                        onTap: () {
                          adittionFun();
                        },
                        child: Container(
                          width: screenWidth * 0.15,
                          height: screenWidth * 0.15,
                          decoration: BoxDecoration(
                            color: const Color(
                              0xff9c27b0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 3,
                                color: Color(0xffbbb5c3),
                                offset: Offset(-5, 5),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.07),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //Sum Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            subtractionFun();
                          },
                          child: Container(
                            width: screenWidth * 0.15,
                            height: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              color: const Color(
                                0xff9c27b0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color(0xffbbb5c3),
                                  offset: Offset(-5, 5),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.07),
                              ),
                            ),
                          ),
                        ),
                        //Subtraction Button
                        GestureDetector(
                          onTap: () {
                            multiplicationFun();
                          },
                          child: Container(
                            width: screenWidth * 0.15,
                            height: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              color: const Color(
                                0xff9c27b0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color(0xffbbb5c3),
                                  offset: Offset(-5, 5),
                                ),
                              ],
                            ),
                            child: Center(
                                child: Text(
                              "x",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.07),
                            )),
                          ),
                        ),
                        // Multiplication Button
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.03),
                      child: GestureDetector(
                        child: Container(
                          width: screenWidth * 0.15,
                          height: screenWidth * 0.15,
                          decoration: BoxDecoration(
                            color: Color(
                              0xff9c27b0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 3,
                                color: Color(0xffbbb5c3),
                                offset: Offset(-5, 5),
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            "/",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.07),
                          )),
                        ),
                      ),
                      // Division Button
                    ),
                  ],
                ),
              ),
              //Buttons
            ],
          ),
        ),
      ),
    );
  }
}
