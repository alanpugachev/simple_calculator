import 'package:flutter/material.dart';

dynamic text ='0';
double numOne = 0;
double numTwo = 0;
dynamic result = '';
dynamic finalResult = '';
dynamic opr = '';

void calculate(btnText) {
  //AC
  if (btnText == 'AC') {
    text = '0';
    numOne = 0;
    numTwo = 0;
    result = '';
    finalResult = '';
    opr = '';
  }
  else if (btnText == '+' || btnText == '-' || btnText == '/' || btnText == '*') {
    opr = btnText;

    if (opr == '+') {
      add();
      print(result);
    }
    //TODO
  }
  else if (btnText == '=') {

  }
  else if (double.tryParse(btnText) != null) {
    if (numOne == 0) {
      numOne = double.parse(btnText);
    }
    else {
      numTwo = double.parse(btnText);
    }
  }
}

String add() {
  result = (numOne + numTwo).toString();
  numOne = double.parse(result);
  return result;
}

String substract() {
  result = (numOne - numTwo).toString();
  numOne = double.parse(result);
  return result;
}

String divide() {
  result = (numOne / numTwo).toString();
  numOne = double.parse(result);
  return result;
}

String multiply() {
  result = (numOne * numTwo).toString();
  numOne = double.parse(result);
  return result;
}