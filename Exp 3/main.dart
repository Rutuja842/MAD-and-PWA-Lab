import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                 decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your first name',  
              labelText: 'First Name',
              ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your first name";
                  } else {
                    return null;
                  }
                },
              ),
               TextFormField(
                 decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your last name',  
              labelText: 'Last Name',
              ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your last name";
                  }  else {
                    return null;
                  }
                },
              ),
              TextFormField(
                 decoration: const InputDecoration(  
              icon: const Icon(Icons.email),  
              hintText: 'Enter your Email',  
              labelText: 'Email',
              ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email";
                  }  else {
                    return null;
                  }
                },
              ),
              TextFormField(
                 decoration: const InputDecoration(  
              icon: const Icon(Icons.contact_phone),  
              hintText: 'Enter your phone number',  
              labelText: 'Phone Number',
              ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your phone number";
                  }else if (value.length <10) {
                      return "Please enter valid phone number";
                    }   else {
                    return null;
                  }
                },
              ),
               TextFormField(
                 decoration: const InputDecoration(  
              icon: const Icon(Icons.calendar_today),  
              hintText: 'Enter your Date of Birth',  
              labelText: 'Date of Birth',
              ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your birth date";
                  }   else {
                    return null;
                  }
                },
              ),
              FlatButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Form submitted Successfully'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Done'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                  }
                },
                child: Text("Submit"),
                color: Colors.green,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}