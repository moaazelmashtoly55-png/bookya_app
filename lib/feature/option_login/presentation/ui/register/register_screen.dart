import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/feature/option_login/presentation/ui/register/widget/register_form.dart';
import 'package:flutter/material.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

body: 
RegisterForm(),

    );
  }
}