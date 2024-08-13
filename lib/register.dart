import 'package:flutter/material.dart';
import 'package:simple_ui/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text('Register',
        style:TextStyle(fontWeight: FontWeight.bold,
        color: Colors.black,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 150, 20, 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Repeat Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16,),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/login');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 64, 151, 223),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text('Register',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                    ),
                ),
              ),
      
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                      },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
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