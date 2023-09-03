import 'package:flutter/material.dart';
import 'package:calculator_dark/constants.dart';
import 'package:calculator_dark/roundButton.dart';
import 'package:calculator_dark/calculator_brain.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';
  CalculatorBrain calc = CalculatorBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                      maxHeight: 70,
                    ),
                    child: Text(
                      result,
                      style: kResultTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    calc.resultOperationText,
                    style: kOperationTextStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kNeonColorText,
                      colorback: kGreyColorBack,
                      buttonText: "AC",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      colorback: kGreyColorBack,
                      buttonText: "+/-",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+/-");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      colorback: kGreyColorBack,
                      buttonText: "%",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("%");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kNeonColorText,
                      colorback: kOrangeColorBack,
                      buttonText: "÷",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("÷");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "7",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("7");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "8",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("8");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "9",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("9");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kNeonColorText,
                      colorback: kOrangeColorBack,
                      buttonText: "×",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("×");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "4",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("4");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "5",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("5");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "6",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("6");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kNeonColorText,
                      colorback: kOrangeColorBack,
                      buttonText: "-",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("-");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "1",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("1");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "2",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("2");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "3",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("3");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kNeonColorText,
                      colorback: kOrangeColorBack,
                      buttonText: "+",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(40),
                      ),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: "0",
                      buttonWidth: 2.7,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("0");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kWhiteColorText,
                      colorback: kLblackColorBack,
                      buttonText: ".",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed(".");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kNeonColorText,
                      colorback: kOrangeColorBack,
                      buttonText: "=",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("=");
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
