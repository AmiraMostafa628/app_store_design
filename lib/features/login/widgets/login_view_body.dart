import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/widgets/custom_button.dart';
import 'package:app_store_task/core/utlis/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
      return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
                child: SizedBox(
                    width: 250,
                    child: SvgPicture.asset(AssetsManager.logoImage))),
            const SizedBox(
              height: 5,
            ),
            Center(child: SvgPicture.asset(AssetsManager.loginImage)),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Login',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Email Id',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              text: "Enter Your Email Id",
              textEditingController: emailController,
              validate: ( value) {
                if (value!.isEmpty) {
                  return 'Email Can not be Empty';}
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              text: "Enter Your Password",
              type: TextInputType.visiblePassword,
              textEditingController: passwordController,
              validate: ( value) {
                if (value!.isEmpty) {
                  return 'password is too short';}
                return null;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: "Login",
                  onPressed: (){
                    GoRouter.of(context).push(AppRouter.kHomeView);
                  },
                )),
            const SizedBox(
              height: 18.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: const Color(0xff858FAD).withOpacity(0.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or continue with",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff858FAD)),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: const Color(0xff858FAD).withOpacity(0.5),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Expanded(child: Image.asset(AssetsManager.googleLogo)),
                const SizedBox(width: 15.0,),
                Expanded(child: Image.asset(AssetsManager.facebookLogo)),

              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t You Have an Account?",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,

                      color: Color(0xff858FAD)),
                ),
                TextButton(onPressed: (){
                  GoRouter.of(context).push(AppRouter.kRegisterView);
                },
                    child: Text("Register",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 14
                      ),
                    ))

              ],
            )
          ],
        ),
      ),
    );
  }
}
