import 'package:chalynyx_todo_app/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Column(
          children: [
            const TopDesign(),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        MediaQuery.of(context).size.width < 500 ? 10 : 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/splash_image.svg",
                        semanticsLabel: 'Splash Image'),
                    const Spacer(
                      flex: 2,
                    ),
                    const H2(
                      text: 'Let’s get things done on time',
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tellus praesent purus tincidunt ut cursus vitae. Nisl, vitae nulla lectus tortor, est a aliquam. Pretium netus "),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: ChalynyxButton(
                text: "Get Started",
                task: () {
                  Navigator.pushNamed(context, '/signup');
                },
                paddingX: 48.0,
                paddingY: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
