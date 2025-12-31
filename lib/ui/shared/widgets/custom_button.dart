import 'package:bootcamp_01/ui/screens/signup_screen/signup_screen.dart';
import 'package:bootcamp_01/ui/shared/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.backgroundColor,
    this.iconName,
  });

  final String? title;
  final Color? backgroundColor;
  final String? iconName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignupScreen()),
        );
      },
      child: iconName != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/$iconName.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 20),
                Text(
                  title ?? "No Title",
                  style: TextStyle(fontSize: 16, color: AppColors.whiteColor),
                ),
              ],
            )
          : Text(
              title ?? "",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
    );
  }
}
