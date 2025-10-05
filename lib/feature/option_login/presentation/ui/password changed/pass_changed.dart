import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/feature/option_login/presentation/ui/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PassChanged extends StatelessWidget {
  const PassChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Align(alignment: AlignmentGeometry.center,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icon/Successmark.svg"),
               SizedBox(height:35,),
              Text("Password Changed!",style: TextStyle(
                fontSize: 26,color: AppColor.dark,
              ),),
               SizedBox(height: 5,),
              Text("Your password has been changed \nsuccessfully.",style: TextStyle(
                fontSize: 15,color: AppColor.gray,
              ),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 40,),
              MasterBotton(title: "Back to Login",onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  LoginScreen()),
            );
            },
)
          
            ],
          ),
        ),
      ),


    );
  }
}