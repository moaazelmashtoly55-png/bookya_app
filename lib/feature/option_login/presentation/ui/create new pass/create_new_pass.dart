import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/feature/option_login/presentation/ui/password%20changed/pass_changed.dart';
import 'package:flutter/material.dart';

class CreateNewPass extends StatelessWidget {
  const CreateNewPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 33,),
            Text("Create new password",style: TextStyle(
              fontSize: 30,color: AppColor.dark,
            ),),
             SizedBox(height: 10,),

            Text("Your new password must be unique from those\n previously used.",
            style: TextStyle(
              fontSize: 16,color: AppColor.gray,
            ),),
            SizedBox(height: 32,),
            CustomTextFormFeild(hintText: "New Password",),
            SizedBox(height: 15,),
            CustomTextFormFeild(hintText: "Confirm Password",),
           SizedBox(height: 38,),
           MasterBotton(title: "Reset Password",onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PassChanged() ),
            );
            },),


          ],
        ),
      ),
    );
  }
}