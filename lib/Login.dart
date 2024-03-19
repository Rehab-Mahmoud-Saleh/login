import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            color: const Color(0xFF32657C),


            height: MediaQuery.of(context).size.height,
            width:  double.infinity,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 3,
                        color: const Color(0xFFCF8145),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20
                    ),
                    child: TextFormField(

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        labelText: 'Email',
                        hintText: 'Email address',
                        prefixIcon: Icon(Icons.email, color: const Color(0xFFCF8145),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20
                    ),
                    child: TextFormField(
                      obscureText: !passwordVisible,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        labelText: 'Password',
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key_outlined ,  color: const Color(0xFFCF8145),) ,
                        suffixIcon:IconButton( icon: Icon(
                          // Based on passwordVisible state choose the icon
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,

                          color: const Color(0xFFCF8145),),
                          onPressed: (){
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Forget Password",
                      style: TextStyle(

                          color: Colors.white
                      ),),),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      child: Text('Login',
                      style: TextStyle(fontSize: 20,
                        color: const Color(0xFF32657C),),),

                        color: const Color(0xFFCF8145),
                        minWidth: 385,
                        height: 55,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      onPressed: () {
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Don't have an account?",
                      style: TextStyle(
                        color: Colors.white

                  ),),),

                  TextButton(onPressed: () {

                  },
                    child:Text('Create an account',
                      style: TextStyle(
                          color: Colors.white
                      ),),),




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}