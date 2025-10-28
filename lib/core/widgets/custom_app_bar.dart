import 'package:bookya_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onTap;
  final String? title;
  final bool backBottom;
  const CustomAppBar({super.key, this.onTap, this.title,  this.backBottom=true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: title!=null?Text(title!):null,
        leading: backBottom? InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: 41,
              height: 41,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColor.Bordercolor),
              ),
              child: Icon(Icons.arrow_back_ios_new_outlined),
            ),
          ),
        ) :null ,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 80);
}
