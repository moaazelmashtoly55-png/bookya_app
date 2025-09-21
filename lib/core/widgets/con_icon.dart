import 'package:bookya_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConIcon extends StatelessWidget {
  final String svg;
  const ConIcon({super.key, required this.svg,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColor.Bordercolor),
        ),
        child: SvgPicture.asset(svg),
      ),
    );
  }
}
