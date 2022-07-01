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

    if (numOne == 0) {
      numOne = double.parse(result);
    }
    else {
      numTwo = double.parse(result);
    }

    if (opr == '+') {
      add();
    }
    else if (opr == '-') {
      substract();
    }
    else if (opr == '/') {
      divide();
    }
    else if (opr == '*') {
      multiply();
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