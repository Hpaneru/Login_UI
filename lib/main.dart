import 'package:flutter/material.dart';

void main() {
  runApp(Hp());
}

class Hp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hp2(),
    );
  }
}

class Hp2 extends StatefulWidget {
  @override
  _Hp2State createState() => _Hp2State();
}

class _Hp2State extends State<Hp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        
        children: <Widget>[
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 35.0,
                    color:Colors.blueAccent[700],
                    fontWeight: FontWeight.bold
                  ),
                ),
                  SizedBox(height: 10.0,),
                  Text(
                          'LOGIN',
                   style: TextStyle(
                fontSize: 30.0,
                color: Colors.blueAccent[700],
                fontWeight: FontWeight.bold),
                  ),
          SizedBox(
            height: 50.0,
          ),
          buildTextField(),
          SizedBox(
            height: 15.0,
          ),
          buildTextFieldpass(),
          SizedBox(
            height: 15.0,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'forget password?',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          )),
          SizedBox(
            height: 30.0,
          ),
          buildButtonContainer(),
          SizedBox(
            height: 100.0,
          ),
          Container(
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "haven't any account?  Create One",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueAccent[700],
                ),
              ),
            
            ],
          )),
        ],
      ),
    ));
  }
}

Widget buildTextField() {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.2)),
        hintText: 'username',
        prefixIcon: Icon(Icons.person),
        fillColor: Colors.white,
        filled: true),
  );
}

Widget buildTextFieldpass() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.2),
      ),
      hintText: 'password',
      prefixIcon: Icon(Icons.lock),
      fillColor: Colors.white,
      filled: true,
    ),
  );
}

Widget buildButtonContainer(){
      return Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color:Colors.blueAccent[700],
        ),
        child: Center(
         child: Text(
            'LOGIN',
            style:TextStyle(
              color:Colors.white,
              fontSize: 20.0,
            ),
            ),
          ),
        );
}



