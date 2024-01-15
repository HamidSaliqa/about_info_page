import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(220),
                        bottomLeft: Radius.circular(220),
                      ),
                    ),
                    child: Stack(children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            size: 35,
                            color: Colors.white,
                          )),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Your Profile",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 200),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.black54)),
                      width: 100,
                      height: 100,
                      child: Icon(
                        Icons.person,
                        color: Colors.deepPurple,
                        size: 80,
                      ),
                    ),
                  ),
                ]),
                myTextfeild(hintText: "Username", icon: Icon(Icons.person)),
                myTextfeild(hintText: "Brithday", icon: Icon(Icons.date_range)),
                myTextfeild(hintText: "Phone number", icon: Icon(Icons.phone)),
                myTextfeild(
                    hintText: "Instagram Account",
                    icon: Icon(Icons.account_box_rounded)),
                myTextfeild(
                    hintText: "password", icon: Icon(Icons.remove_red_eye)),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Edite Profile",style: TextStyle(fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),),
                    backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                    fixedSize: MaterialStatePropertyAll(Size(160,50))
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class myTextfeild extends StatelessWidget {
  final String hintText;
  final Icon icon;

  myTextfeild({required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: icon,
            prefixIconColor: Colors.deepPurple,
            iconColor: Colors.deepPurple,
            hintText: hintText,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple))),
      ),
    );
  }
}
