import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/login.png",
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            const Divider(
              thickness: 2,
              color: Colors.purple,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Login Now",
              style: TextStyle(
                  color: Color.fromARGB(255, 125, 10, 145),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Please enter the details below to continue!",
              style: TextStyle(color: Color.fromARGB(255, 125, 10, 145)),
            ),
            // Username textfield
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 180, 236),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Username",hintStyle: TextStyle(color: Colors.purple),
                    suffixIcon: Icon(Icons.mail_rounded, color: Colors.purple,)
                  ),
                ),
              ),
            ),
            // Password textfield
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 180, 236),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",hintStyle: TextStyle(color: Colors.purple),
                    suffixIcon: Icon(Icons.lock,color: Colors.purple,),
                  ),
                ),
              ),
            ),
            // Forgot password
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {

                },
                child: const Text("Forgot your password", style: TextStyle(color: Color.fromARGB(255, 95, 5, 111), fontWeight: FontWeight.w500),),
              ),
            ),
            const SizedBox(height: 15,),
            // Login Button
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),),
                  ),
                  ),
                ),
              ],
            ),
            // Register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w500),),
                TextButton(onPressed: () {}, child: const Text("Register",  style: TextStyle(color: Color.fromARGB(255, 105, 3, 123)),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
