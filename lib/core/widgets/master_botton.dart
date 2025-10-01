import 'package:bookya_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class MasterBotton extends StatelessWidget {
  final String title;
  final Color? backgroundcolor;
  final Color? textcolor;
  final void Function()? onTap;
  const MasterBotton({super.key,
   required this.title,
    this.backgroundcolor,
    this.textcolor,
    this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        
      
      child: Container(
        width: double.infinity,
        height: 56,
        padding: EdgeInsets.symmetric(vertical: 19),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundcolor ?? AppColor.primary,
        ),
        child: Text(title, style: TextStyle(fontSize: 15, color:textcolor?? Colors.white)),
      ),
    );
  }
}
