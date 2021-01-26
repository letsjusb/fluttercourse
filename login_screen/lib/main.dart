import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Login(),
      ),
    );
  }
}

class Login extends StatefulWidget {  
  @override  
  _State createState() => _State();  
} 
  
class _State extends State<Login> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(    
        body: Padding(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ),  
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ),  
                RaisedButton(  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Sign In'),  
                  onPressed: (){},  
                )  
              ],  
            )  
        )  
    );  
  }  
}  