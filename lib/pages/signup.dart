import 'package:flutter/material.dart';

// Creating a StatefulWidget Named as MyCustomForm
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  // This build method is called when the state of the widget is created
  // The build method returns a widget that is displayed on the screen, here we are returning MaterialApp widget.
  Widget build(BuildContext context) {
    // MaterialApp is a widget that is used to create an application
    return MaterialApp(
      //Title of the application
      title: 'Lab 02 Assignment',

      //Theme of the application
      //ThemeData is a class that is used to create a theme for the application
      theme: ThemeData(
        //brightness is a property of the ThemeData class that is used to set the brightness of the application
        brightness: Brightness.dark,

        //primarySwatch is a property of the ThemeData class that is used to set the primary color of the application
        primarySwatch: Colors.blueGrey,

        //inputDecorationTheme is a property of the ThemeData class that is used to set the input decoration theme of the application
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blueGrey),
          ),
        ),
      ),
      //Scaffold is a widget that is used to create a scaffold for the application
      home: Scaffold(
        //appBar is a property of the Scaffold class that is used to create an app bar for the application
        appBar: AppBar(
          //title is a property of the AppBar class that is used to set the title that will be displayed in the app bar
          title: const Center(child: Text("SignUp Page 19SW20")),

          //backgroundColor is a property of the AppBar class that is used to set the background color of the AppBar
          backgroundColor: Colors.blueGrey,
        ),

        //body is a property of the Scaffold class that is used to create a body for the application
        //here we are creating a form widget that is used to create a form for the application
        body: Form(
          //formkey is a property of the Form class that is used to create a form key for the application
          key: _formKey,

          //Here as a child of Form we are creating a Column widget that is used to create a column for the application
          //The column widget is wrapped inside Padding Widget
          child: Padding(
            //I've set the padding to be 8.0 on verticle and 40 on horizontal
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
            child: Column(
              //crossAxisAlignment is a property of the Column class that is used to set the cross axis alignment of the column
              //Here we are setting the cross axis alignment to be center
              //This will center the column in the vertical axis
              //All the widgets inside the column will be aligned in the center of the column
              crossAxisAlignment: CrossAxisAlignment.center,

              //children is a property of the Column class that is used to set the children of the column
              //Here we are creating a list of widgets that will be displayed in the column
              //Inside children we will pass all widgets we want to display.
              //Here we are passing the widgets in the order that we want to display them
              //Here I am Passing the TextFormField widget to the column and in last a button.
              children: [
                //sizedBox is used to create a space between the widgets
                //Here I'm just passing the height 30
                //it will create a space of 30 between the AppBar and the next widget that i'll create.
                const SizedBox(height: 30),

                //AppBar than a 30 space and now I'm passing the TextFormField widget to the column
                TextFormField(
                  //decoration is a property of the TextFormField class that is used to set the decoration of the TextFormField
                  //in decoration we will pass the InputDecoration widget that we want to use to set the decoration of the TextFormField
                  decoration: const InputDecoration(
                    //hintText property is used to give a HintText to the TextFormField
                    //Here I'm passing the HintText as 'Enter your name'
                    hintText: "Enter your name",

                    //border is a property used to set Border of the TextFormField
                    //Here I'm passing the border as OutlineInputBorder widget
                    //OutlineInputBorder widget will create a border around the TextFormField
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Your Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "New Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Confirm your Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),

                //Here I'm passing the ElevatedButton widget to the column
                ElevatedButton(
                  //onPressed is a property of the ElevatedButton class that is used to set the onPressed callback for the button
                  //It is a callback that is called when the button is pressed
                  //Here I am passing the onPressed callback as an anonymous function, that is a function without a name
                  //It is empty too.
                  onPressed: () {},

                  //child is a property of the ElevatedButton class that is used to set the child of the button
                  //Here I'm passing the child as Text widget that is used to display the text on the button
                  child: const Text(
                    //text is a property of the Text class that is used to set the text that will be displayed on the button
                    //Here I'm passing the text as 'Sign Up'
                    'Sign Up',

                    //style is a property of the Text class that is used to set the style of the text
                    //Here I'm passing the style as TextStyle widget inside which we will pass the style properties
                    //fontSize is a property of the TextStyle class that is used to set the font size of the text
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
