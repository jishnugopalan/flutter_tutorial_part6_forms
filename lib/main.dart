

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Forms',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue,titleTextStyle: TextStyle(color: Colors.white,fontSize: 25)),





      ),
      home: const FormPage(),
    );
  }
}
class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: ListView(
        //set padding for list view
        padding: EdgeInsets.all(10),
        children: [
          Form(
            key: _formKey,
              child: Column(children: [
                //simple text field
                TextFormField(),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    //setting lable
                      label: Text("Full Name"),
                    //helper text
                    helperText: "abc",
                    //prefix icon
                    prefixIcon: Icon(Icons.person),
                    //suffix icon
                    suffixIcon: Icon(Icons.account_circle),
                    //set border
                    border: UnderlineInputBorder(),


                  ),
                  //set keyboard type
                  keyboardType: TextInputType.name,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    //setting lable
                    label: Text("Email"),
                    //prefix icon
                    prefixIcon: Icon(Icons.email),
                    //suffix icon
                    suffixIcon: Icon(Icons.email),
                    //set border
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),


                  ),
                  //
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    //setting lable
                    label: Text("Phone"),
                    //prefix icon
                    prefixIcon: Icon(Icons.phone),
                    //suffix icon
                    suffixIcon: Icon(Icons.phone),
                    //set border
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),


                  ),
                  //
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    //setting lable
                    label: Text("Password"),
                    //prefix icon
                    prefixIcon: Icon(Icons.key),
                    //suffix icon
                    suffixIcon: Icon(Icons.key_off),
                    //set border
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),


                  ),
                  //make text hidden
                  obscureText: true,

                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: (){}, child: Text("Submit",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),)

              ],))
        ],

      ),
    );
  }
}


