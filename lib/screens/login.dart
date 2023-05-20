import 'package:chalynyx_todo_app/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopDesign(
              where: BlendMode.srcIn,
            ),
            const SizedBox(
              height: 35,
            ),
            const H2(text: "Welcome Onboard"),
            const SizedBox(
              height: 15,
            ),
            SvgPicture.asset("assets/images/splash_image.svg",
                semanticsLabel: 'Splash Image'),
            const SizedBox(
              height: 15,
            ),
            const MyLoginForm()
          ],
        ),
      ),
    );
  }
}

class MyLoginForm extends StatefulWidget {
  const MyLoginForm({super.key});

  @override
  State<MyLoginForm> createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  final _formKey = GlobalKey<FormState>();
  // final String _email = '';
  // final String _password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width < 500 ? 380 : 550,
              child: TextFormField(
                style: const TextStyle(color: Colors.black54),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your email',
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFFFFFFF),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) {
                  return null;
                },
                onSaved: (value) {},
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width < 500 ? 380 : 550,
              child: TextFormField(
                style: const TextStyle(color: Colors.black54),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFFFFFFF),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) {
                  return "hi";
                },
                onSaved: (value) {},
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0BA37F),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal:
                          MediaQuery.of(context).size.width < 580 ? 150 : 250,
                    ),
                    shadowColor: Colors.grey[800],
                    elevation: 6),
                child: const Text("login")),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: const Text("Sign Up"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/admin/home');
                  },
                  child: const Text("admin"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
