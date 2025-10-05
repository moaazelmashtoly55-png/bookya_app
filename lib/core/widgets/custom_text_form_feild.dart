import 'package:bookya_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatefulWidget {
  final bool isPassword;
  final String hintText;
  final TextEditingController? controller;
 final String? Function (String?)? validator;
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.isPassword = false,  this.controller, this.validator,
  });

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:widget.validator ,
      controller:widget.controller ,
      obscureText: widget.isPassword&&obscureText,
      decoration: InputDecoration(
        fillColor: AppColor.lightgray,
        filled: true,
        suffixIcon: widget.isPassword
            ? InkWell(
                onTap: () {
                setState(() {
                    obscureText = !obscureText;
                });
                },

                child: Icon( obscureText? Icons.visibility_off:Icons.visibility ),
                  ) : null,

        hintText: widget.hintText,
        hintStyle: TextStyle(color: AppColor.gray, fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.Bordercolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
