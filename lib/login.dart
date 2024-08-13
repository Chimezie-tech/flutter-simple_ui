import 'package:flutter/material.dart';
import 'package:simple_ui/navbar.dart';
import 'package:simple_ui/register.dart';
import 'package:simple_ui/screens/home.dart';
//import 'package:simple_ui/screens/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          'Login page',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.fromLTRB(20, 150, 20, 20),
            child: Column(
              children: [
      
                // Text input field for email
               TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
      
                // Spacing btween
               const SizedBox(height: 16,),
      
                // Text input field for password
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  ),
      
                  // Spacing between
                 const SizedBox(height: 16,),
      
                  // Customized Button using the GestureDetector to wrap the Container
                  GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar()),
                  );
                    },
      
                    // Main Button container
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 64, 151, 223),
                        borderRadius: BorderRadius.circular(5),
                      ),
      
                      // Text inside the container styled as center with other styling attibuted to it.
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                          ),
                          ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  // End of Button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    SizedBox(width: 4,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    )
                  ],
                ),
              )
      
              ],
            ),
          ),
      ),  
    );
  }
}