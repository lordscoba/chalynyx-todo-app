// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChalynyxButton extends StatelessWidget {
  final String text;
  final void Function()? task;
  final double paddingX;
  final double paddingY;

  const ChalynyxButton({
    super.key,
    required this.text,
    required this.task,
    required this.paddingX,
    required this.paddingY,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0BA37F),
            padding:
                EdgeInsets.symmetric(vertical: paddingY, horizontal: paddingX),
            shadowColor: Colors.grey[800],
            elevation: 6),
        child: Text(text));
  }
}

class TopDesign extends StatelessWidget {
  final BlendMode where;
  const TopDesign({
    super.key,
    required this.where,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          "assets/images/design_top.svg",
          semanticsLabel: 'Splash Image',
          color: const Color(0xFF0BA37F),
          colorBlendMode: where,
        ),
      ],
    );
  }
}

class H2 extends StatelessWidget {
  const H2({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField(
      {super.key, this.assignment, this.validate, required this.placeholder});

  final void Function(String?)? assignment;
  final String? Function(String?)? validate;
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width < 500 ? 300 : 550,
      child: TextFormField(
        style: const TextStyle(color: Colors.black54),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: placeholder,
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
        validator: validate,
        onSaved: assignment,
      ),
    );
  }
}
