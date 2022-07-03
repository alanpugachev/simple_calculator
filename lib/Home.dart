import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget btn(String text, Color btncolor, Color textcolor) {
    return Container(
      child: RaisedButton(
        onPressed: (){
          calculate(text);
          setState(() {
          });
        },
        child: Text(
          text, 
          style: TextStyle(
            fontSize: 35,
            color: textcolor,
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Calculator'), backgroundColor: Colors.black,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(10.0),
                  child: Text('$text',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('AC', Colors.grey, Colors.black),
                btn('+/-', Colors.grey, Colors.black),
                btn('%', Colors.grey, Colors.black),
                btn('/', Colors.amber, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('7', Colors.blueGrey, Colors.white),
                btn('8', Colors.blueGrey, Colors.white),
                btn('9', Colors.blueGrey, Colors.white),
                btn('*', Colors.amber, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('4', Colors.blueGrey, Colors.white),
                btn('5', Colors.blueGrey, Colors.white),
                btn('6', Colors.blueGrey, Colors.white),
                btn('-', Colors.amber, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('1', Colors.blueGrey, Colors.white),
                btn('2', Colors.blueGrey, Colors.white),
                btn('3', Colors.blueGrey, Colors.white),
                btn('+', Colors.amber, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: () { 
                    calculate('0');
                  },
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  shape: StadiumBorder(),
                  color: Colors.blueGrey,
                ),
                btn('.', Colors.blueGrey, Colors.white),
                btn('=', Colors.amber, Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }

  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;
  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';

  void calculate(btnText) {
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
        finalResult = add();
      }
      else if (opr == '-') {
        finalResult = substract();
      }
      else if (opr == '/') {
        finalResult = divide();
      }
      else if (opr == '*') {
        finalResult = multiply();
      }
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

    setState(() {
      text = finalResult.toString();
    });
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
}