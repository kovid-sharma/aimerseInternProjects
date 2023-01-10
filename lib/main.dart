import 'package:flutter/material.dart';
import 'package:intern_login/screen.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: {
        'shop': (context)=> screen(),
      },
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
              child: Container(
                child: Image.asset(
                'assets/logo.png'
              ),
              margin: EdgeInsets.all(60),
      )

          ),
          Expanded(
            flex: 9,
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Log Into Your Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6,vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left:6,
                              right:6,
                              //bottom: 1.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                            ),
                          ),
                            hintText: 'jack@gmail.com',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                        ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextFormField(
                          obscuringCharacter: '*',
                          obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: 10.0,
                                right: 15.0,
                                bottom: 1.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 3.0,
                                ),
                              ),
                              hintText: '**********',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )
                            ),

                          ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text('Create New Account',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),),
                            Expanded(
                              flex: 2,
                                child: Container(

                            )
                            ),
                            Expanded(
                              flex: 3,
                              child: Text('Forgot Password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Center(
                            child: SizedBox(

                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context,'shop');
                                },
                                child: Text(
                                    'Login',
                                    ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.amber[900],

                                      elevation: 0, //elevation of button
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      padding: EdgeInsets.all(20) //content padding inside button
                                  )
                              ),
                            )
                          ),

                      ],
                    ),
                  )
                  ],
                ),
              ),
          ),

        ],
      )
    );
  }
}

