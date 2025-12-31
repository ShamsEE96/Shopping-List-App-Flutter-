import 'package:bootcamp_01/ui/shared/utils/colors.dart';
import 'package:bootcamp_01/ui/shared/widgets/custom_button.dart';
import 'package:bootcamp_01/ui/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     "Login",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }
          print(TextStyleEnum.heading.name);
          // Navigate to the home view when back navigation is attempted
        },
        child: SafeArea(
          child: Padding(
            // padding: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Add your details to login",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Your Email",
                      hintStyle: TextStyle(color: Colors.grey.shade300),
                      fillColor: Colors.grey.shade700,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      contentPadding: EdgeInsetsDirectional.symmetric(
                        horizontal: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey.shade300),
                      fillColor: Colors.grey.shade700,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      contentPadding: EdgeInsetsDirectional.symmetric(
                        horizontal: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomButton(title: "Login", backgroundColor: Colors.orange),
                  SizedBox(height: 20),
                  Text(
                    "Forgot Your Password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "or Login with",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, color: Colors.white, size: 24),
                        SizedBox(width: 20),
                        Text(
                          "Login with Facebook",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/google_icon.svg',
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
