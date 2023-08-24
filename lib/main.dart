import 'package:fingerprint_local_auth/Screen/verified_page.dart';
import 'package:fingerprint_local_auth/Screen/verified_page.dart';
import 'package:fingerprint_local_auth/controller/authentication.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthenticationPage(),
    );
  }
}

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF043d33),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Login to the App", style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w800
            ),),
            const SizedBox(
              height: 28,
            ),
            const Text("Use your Fingerprint to Log into the App", style: 
            TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400),),
            const SizedBox(
              height: 28,
            ),
            const Divider(
              color: Colors.white60,
            ),
            const SizedBox(
              height: 28,
            ),
            ElevatedButton.icon(
       
              onPressed: () async {
                bool auth = await Authentication.authentication();
                print("Can authenticat: $auth");
                if (auth) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Verified_Page()));
                }
              },
              icon: const Icon(Icons.fingerprint, color:  Color(0xFF043d33),),
              label: const Text("Authentication", style: TextStyle(
                color:  Color(0xFF043d33),

              ),),
            )
          ],
        ),
      )),
    );
  }
}
