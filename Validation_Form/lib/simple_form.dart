import 'package:firstapp/Validations/form_validations.dart';
import 'package:flutter/material.dart';

class SimpleForm extends StatefulWidget {
  SimpleForm({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SimpleForm createState() => _SimpleForm();
}

class _SimpleForm extends State<SimpleForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validation Form"),
      ),
      body: new SingleChildScrollView(
        child: new Padding(
          padding: EdgeInsets.all(20),
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: [
                  _sizeBox(),
                  _buildName(),
                  _sizeBox(),
                  _buildMobile(),
                  _sizeBox(),
                  _buildEmail(),
                  new RaisedButton(
                    onPressed: _validateInputs,
                    child: new Text('Submit'),
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  Widget _buildName() {
    return TextFormField(
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.blueAccent)),
          hintText: "Enter Name",
          labelText: 'Name',
          prefixIcon: Icon(
            Icons.person,
          ),
          suffixStyle: const TextStyle(color: Colors.green)),
      keyboardType: TextInputType.text,
      validator: validateName,
      onSaved: (String val) {
        _name = val;
        print(_name);
      },
    );
  }

  Widget _buildMobile() {
    return TextFormField(
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.blueAccent)),
          hintText: "Enter Phone Number",
          labelText: 'Phone Number',
          prefixIcon: Icon(
            Icons.phone,
          ),
          suffixStyle: const TextStyle(color: Colors.green)),
      keyboardType: TextInputType.phone,
      validator: validateMobile,
      onSaved: (String val) {
        _mobile = val;
        print(_mobile);
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.blueAccent)),
          hintText: "Enter Email",
          labelText: 'Email',
          prefixIcon: Icon(
            Icons.email,
          ),
          suffixStyle: const TextStyle(color: Colors.green)),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (String val) {
        _email = val;
        print(_email);
      },
    );
  }

  Widget _sizeBox() {
    return SizedBox(height: 10);
  }
}
