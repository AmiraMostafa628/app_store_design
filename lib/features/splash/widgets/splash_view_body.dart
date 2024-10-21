import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/features/splash/widgets/sliding_image.dart';
import 'package:app_store_task/features/splash/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with TickerProviderStateMixin{
  late AnimationController animationControllerText;
  late Animation<Offset> slidingAnimationText;

  late AnimationController animationControllerImage;
  late Animation<Offset> slidingAnimationImage;

@override
  void initState() {
    super.initState();
    initAnimationControllerText();
    initAnimationControllerImage();

    navigateToLogin();
  }
 @override
  void dispose() {
    super.dispose();
    animationControllerText.dispose();
    animationControllerImage.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingImage(slidingAnimation: slidingAnimationImage,),
        SlidingText(slidingAnimation: slidingAnimationText,),

      ],
    );
  }
  
  void initAnimationControllerText(){
   animationControllerText = AnimationController(vsync: this,
     duration: const Duration(seconds: 2),);

   slidingAnimationText= Tween<Offset>(begin:const Offset(-3,0),end: Offset.zero)
       .animate(animationControllerText);

   animationControllerText.forward();
  }

  void initAnimationControllerImage(){
   animationControllerImage = AnimationController(vsync: this,
     duration: const Duration(seconds: 2),);

   slidingAnimationImage = Tween<Offset>(begin:const Offset(3,0),end: Offset.zero)
       .animate(animationControllerImage);

   animationControllerImage.forward();
  }
  
  void navigateToLogin(){
  Future.delayed(const Duration(seconds: 5),(){
    GoRouter.of(context).push(AppRouter.kLoginView);
  });
  }
}
