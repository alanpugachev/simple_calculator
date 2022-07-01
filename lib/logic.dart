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