import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Caluclator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Caluclator extends StatefulWidget{
  @override
  _CaluclatorScreenState createState() => _CaluclatorScreenState();
}

class _CaluclatorScreenState extends State<Caluclator>{
  final TextEditingController num1controller =TextEditingController();
  final TextEditingController num2controller = TextEditingController();
  final TextEditingController operatorcontroller = TextEditingController();
  String result ="";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller : num1controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "enter num1")),
              SizedBox(height: 20,),
              TextField(
              controller : num2controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "enter num1")),
              SizedBox(height: 20,),
              TextField(
              controller : operatorcontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "enter num1")),
              SizedBox(height: 20,),
              FloatingActionButton(onPressed: (){
                int num1=int.parse(num1controller.text);
                int num2 = int.parse(num2controller.text);
                String operator = operatorcontroller.text;
                setState(() {
                  switch(operator){
                    case "+":
                    result = "Result = ${num1 + num2}";
                    case "-":
                    result = "Result = ${num1 - num2 }";
                    case "*":
                    result = "Result = ${num1 * num2}";
                    case "/":
                    result = "Result = ${num1 / num2 }";
                    case "%":
                    result = "Result = ${num1 % num2 }";
                  }
                });
              },
              child: Icon(Icons.calculate)),
                        ],
        ),
      ),
    );
  }
}
