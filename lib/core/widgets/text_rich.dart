import 'package:bookya_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class TextRich extends StatelessWidget {
  final String text1;
  final String text2;
 final void Function()? onTap;
  const TextRich({super.key, required this.text1, required this.text2 , this.onTap});
 
  @override
  Widget build(BuildContext context) {
    return Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(onTap: onTap,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:text1,
                        style: TextStyle(fontSize: 15, color: AppColor.dark),
                      ),
                      TextSpan(
                        text: text2,
                        style: TextStyle(fontSize: 15, color: AppColor.primary),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}