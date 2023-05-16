import 'package:chalynyx_todo_app/widgets/components.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: ListView(
        children: [
          Column(
            children: const [
              Center(child: TopDesign()),
              SizedBox(
                height: 35,
              ),
              H2(text: "Welcome Onboard"),
              SizedBox(
                height: 15,
              ),
              Text("We help you meet up to your task on time"),
            ],
          ),
          const MySignUpForm()
        ],
      ),
    );
  }
}

class MySignUpForm extends StatefulWidget {
  const MySignUpForm({super.key});

  @override
  State<MySignUpForm> createState() => _MySignUpFormState();
}

class _MySignUpFormState extends State<MySignUpForm> {
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
            const InputField(
              placeholder: 'Enter your Full Name',
            ),
            const SizedBox(
              height: 15,
            ),
            const InputField(
              placeholder: 'Enter your email',
            ),
            const SizedBox(
              height: 15,
            ),
            const InputField(
              placeholder: 'Enter your password',
            ),
            const SizedBox(
              height: 15,
            ),
            const InputField(
              placeholder: 'Confirm Password',
            ),
            const SizedBox(
              height: 15,
            ),
            ChalynyxButton(
              text: "Register",
              task: () {},
              paddingX: MediaQuery.of(context).size.width < 500 ? 110 : 250,
              paddingY: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
