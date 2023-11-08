import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_ui_responsive/ui/reusable.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController comPasswordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 15.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up to Developer",
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black.withAlpha(88)),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 16.sp, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                ReusableCode().myTextFormField(
                    nameController, false, "Write your Name", "Name"),
                SizedBox(
                  height: 8.h,
                ),
                ReusableCode().myTextFormField(
                    emailController, false, "Write your Email", "Email"),
                SizedBox(
                  height: 8.h,
                ),
                ReusableCode().myTextFormField(passwordController, true,
                    "Write your Password", "Password"),
                SizedBox(
                  height: 8.h,
                ),
                ReusableCode().myTextFormField(comPasswordController, true,
                    "Write your Comfirm password", "Password"),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        height: 5.h,
                        color: Colors.black,
                      )),
                      Text(
                        "Or sign Up Via",
                        style: TextStyle(
                            fontSize: 16.sp, color: Colors.black.withAlpha(88)),
                      ),
                      Expanded(
                          child: Divider(
                        height: 5.h,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/googleLogo.png",
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(width: 10.h,),
                          Text(
                            "Google",
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    )),
                  ),
                ),
                SizedBox(height: 10.h,),
                Wrap(
                  children: [
                    Text(
                      "By signing up to Developer you agree to our",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black.withAlpha(88)),
                    ),
                    Text("terms and conditions",style: TextStyle(
                          fontSize: 16.sp, color: Colors.blue),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
