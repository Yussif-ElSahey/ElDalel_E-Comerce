import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login.dart';

void main(){
}

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
    bool hidePassword = true;
    bool hidePassword1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp,
          size: 35,
          color:HexColor("#7C1122"),
          ),
        ),
        leadingWidth: 70,


      ),
        body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Column(
              children: [
                Column(
                  
                  children: [
                    
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0 ,left: 22),
                        child: Text('Register',
                        style: TextStyle(
                        color: HexColor("#7C1122"),
                        fontFamily: 'Roboto.light',
                        fontSize: 34 ,
                        ),),
                      ),
                    ),

                    Padding(
                    padding: const EdgeInsets.only(top: 20 , left: 22 ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Setup Your Account Details',
                        style: TextStyle(
                        color: HexColor("#9F9E9E"),
                        fontFamily: 'Roboto.Regular',
                        fontSize: 16 ,
                        ),),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:40 ),
                    child: Column(
                      children: [
                        
                      Container(
                        width: MediaQuery.of(context).size.width * 0.87 ,
                        child:   TextField(
                        decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                        color: HexColor("#9F9E9E") ,
                        fontFamily: 'Roboto',
                        fontSize: 14 ,)
    ),
  ),
), 
                     ],
                     
                    ),
                  ),
                  Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.87 ,

                      child: TextField(
                      onChanged: (value) {
                      print(value);
                      },
                      obscureText: hidePassword,//show/hide password
                      decoration: InputDecoration(
                
                
                      suffixIcon: IconButton(
                      icon: hidePassword
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                      onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                      },
                      ),
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                        hintStyle: TextStyle( 
                        color: HexColor("#9F9E9E") ,
                        fontFamily: 'Roboto',
                        fontSize: 14 ,
                      ),
                      )),
                    ),
                    ],
                    ),
                    Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.87 ,

                      child: TextField(
                      onChanged: (value) {
                      print(value);
                      },
                      obscureText: hidePassword1,//show/hide password
                      decoration: InputDecoration(
                
                
                      suffixIcon: IconButton(
                      icon: hidePassword1
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                      onPressed: () {
                      setState(() {
                        hidePassword1 = !hidePassword1;
                      });
                      },
                      ),
                        border: UnderlineInputBorder(),
                        hintText: 'Password Confirmation',
                        hintStyle: TextStyle( 
                        color: HexColor("#9F9E9E") ,
                        fontFamily: 'Roboto',
                        fontSize: 14 ,
                      ),
                      )),
                    ),
                    ],
                    ),

                  ],
                ),/*
                */
  
                      Column(
                        children: [
                          GestureDetector(
                          onTap: () { 
                          print("Click event on "); 
                          },
                          child: Padding(
                          padding: const EdgeInsets.only(top: 20,right: 20,bottom: 20 ),
                            child: Align(
                              
                              alignment: Alignment.bottomRight,
                              
                              child: Text('Forget password ?',
                              
                              style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: HexColor("#7C1122"),
                              fontFamily: 'Roboto.Regular',
                              fontSize: 14 ,
                              ),),
                              
                            ),
                          ),
                          ),
                        ],
                      ),

                      MaterialButton(
                    
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
                  },
                  color:HexColor("#7C1122") ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10) ),
                    child: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 16 ,
                    ),
                    ),



                        minWidth: MediaQuery.of(context).size.width * 0.6 ,
                  height: 40,
                  ),
                  Column(
                        children: [
                          Padding(
                          padding: const EdgeInsets.only(top: 20,right: 0 ),
                            child: Align(
                              
                              alignment: Alignment.center,
                              
                              child:
                        Padding(
                          padding: const EdgeInsets.only(top: 20,),
                          child: RichText(
                                text:  TextSpan(
                                style: TextStyle(fontSize: 30, color: Colors.black),
                                children: [
                                  
                                TextSpan(

                                text: 'New user? ',
                                style: TextStyle(
                                fontFamily: 'Roboto.Regular',
                                color: HexColor("#9F9E9E") ,
                                fontSize: 14 ,),
                                ),
                            TextSpan(
                                text: 'Register now',
                                recognizer: new TapGestureRecognizer()
                                ..onTap = () =>  {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>  register()),
                            )
                          },

                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Roboto.Regular',
                                fontSize: 14 ,
                                color: HexColor("#7C1122"),
                                    )),
                                ]),
      ),
                        ),                              
                      

                              
                            ),
                          ),
                        ],
                      ),



              ],
              )),
              
              
          ],
          
        ),
        
        
      ),
 
    );
  }
}