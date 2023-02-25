import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/pexels-matheus-bertelli-799443 1.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              SizedBox(
                width: 450,
                height: 760,
                child: Material(
                  color: Color(0x00000000),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 438,
                            height: 894,
                            padding: const EdgeInsets.only(
                              left: 43,
                              right: 41,
                              top: 120,
                              bottom: 224,
                            ),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 224,
                                        height: 111,
                                        child: Image.asset(
                                            'assets/images/image 9.png'),
                                      ),
                                      SizedBox(height: 1.70),
                                      SizedBox(
                                        width: 211,
                                        height: 60,
                                        child: Text(
                                          "CarHunt",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 48,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 1.70),
                                      Container(
                                        width: 300,
                                        height: 40,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                                width: 256,
                                                height: 40,
                                                child: Material(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(74),
                                                  child: TextField(
                                                    controller: nameController,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      labelText: 'User Name',
                                                    ),
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 1.70),
                                      SizedBox(
                                        width: 90,
                                        height: 1,
                                      ),
                                      SizedBox(height: 1.70),
                                      SizedBox(
                                        width: 256,
                                        height: 40,
                                        child: Material(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(74),
                                          child: TextField(
                                            obscureText: true,
                                            controller: passwordController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Password',
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 1.70),
                                      SizedBox(
                                        width: 90,
                                        height: 10,
                                      ),
                                      SizedBox(height: 1.70),
                                      FlatButton(
                                          onPressed: () {
                                            //forgot password screen
                                          },
                                          textColor: Colors.blue,
                                          child: Text(
                                            "Forgot Password?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          )),
                                      SizedBox(height: 1.70),
                                      SizedBox(
                                        width: 90,
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 256,
                                        height: 30,
                                        child: RaisedButton(
                                          child: Text(
                                            "LOG IN",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              height: 2,
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          color: Color(0xff212121),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(74))),
                                          onPressed: () {
                                            print(nameController.text);
                                            print(passwordController.text);
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SecondRoute()));
                                          },
                                        ),
                                      ),
                                      SizedBox(height: 1.70),
                                      SizedBox(height: 1.70),
                                      SizedBox(
                                        width: 256,
                                        height: 30,
                                        child: Material(
                                          color: Color(0xff212121),
                                          borderRadius:
                                              BorderRadius.circular(74),
                                          child: Text(
                                            "SIGN UP",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              height: 2,
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 1.70),
                                      SizedBox(
                                        width: 95,
                                        height: 11,
                                      ),
                                    ],
                                  ),
                                ),
                                // Positioned.fill(
                                //   child: Image.asset('assets/images/pexels-matheus-bertelli-799443 1.png'),

                                //),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  _State1 createState() => _State1();
}

class _State1 extends State<SecondRoute> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Track"),
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Past Rides',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()));
                      },
                      child: const Text('Go Back'),
                    ))
                  ],
                ))));
  }
}
