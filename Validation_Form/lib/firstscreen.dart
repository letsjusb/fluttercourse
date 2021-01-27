import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternav/valid.dart';
class  MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State< MyHomePage> {
  String _name; String _phonenumber;  bool enable =true;
  final GlobalKey<FormState>_formKey= GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" LOGIN"),
        centerTitle: true,
      ),

      body:Container(

margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(

        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: AssetImage('images/login.png'),
              ),
            ),
          ),

      Form(
            key: _formKey,
            child: Column(
              children: <Widget>[

                _buildName(),
                // _buildEmail(),
                spaceWidget(),
                _buildphonenumber(),

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: _submitButton(),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildName() {
    return TextFormField(

        decoration: InputDecoration(

          border: OutlineInputBorder(

              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color:Colors.black54,width: 3)
          ),
          hintText: 'Enter UserName',
          contentPadding: EdgeInsets.all(20.0),
        suffixIcon: Icon(Icons.person),

        ),
        validator: (value)=>nameValidator(value),
        onSaved: (String value){
          _name = value;
          Widget spaceWidget() {
            return SizedBox(
                height: 60);
          }

          // hintStyle: TextStyle(color: Colors.blueAccent)


        }
    );


  }
  Widget spaceWidget() {
    return SizedBox(
        height: 25
    );


  }

  Widget _buildphonenumber() {
    return TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(color:Colors.black54,width: 3),
          ),
          hintText: 'Enter phonenumber',
          contentPadding: EdgeInsets.all(20.0),
          suffixIcon: Icon(Icons.phone_android_outlined),
        ),
        validator: (value)=>phonenumberValidator(value),
        onSaved: (String value){
          _phonenumber = value;


          // hintStyle: TextStyle(color: Colors.blueAccent)


        }
    );


  }
  _submitButton() {
    return RaisedButton(
        onPressed: () {
          navigetoSecondPage(context);

          },


        child:Text("Submit",
          style: TextStyle(color: Colors.lightBlueAccent),
        )
    );

  }

  void navigetoSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second");
  }
}


