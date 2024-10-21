import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/features/home/home_view.dart';
import 'package:app_store_task/features/home/widgets/Add_new_adddress.dart';
import 'package:app_store_task/features/home/widgets/about_view_body.dart';
import 'package:app_store_task/features/home/widgets/contact_us.dart';
import 'package:app_store_task/features/home/widgets/details_view_body.dart';
import 'package:app_store_task/features/home/widgets/explore_view_body.dart';
import 'package:app_store_task/features/home/widgets/faq_view_body.dart';
import 'package:app_store_task/features/home/widgets/fruit_view_body.dart';
import 'package:app_store_task/features/home/widgets/my_address.dart';
import 'package:app_store_task/features/home/widgets/my_orders.dart';
import 'package:app_store_task/features/home/widgets/my_subscription.dart';
import 'package:app_store_task/features/home/widgets/my_wallet.dart';
import 'package:app_store_task/features/home/widgets/payment_view_body.dart';
import 'package:app_store_task/features/home/widgets/privacy_policy_view_body.dart';
import 'package:app_store_task/features/home/widgets/terms_and_services.dart';
import 'package:app_store_task/features/login/login_view.dart';
import 'package:app_store_task/features/register/register_view.dart';
import 'package:app_store_task/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kHomeView = '/homeView';
  static const kExploreView = '/exploreView';
  static const kFruitView = '/fruitView';
  static const kDetailsView =  '/detailsView';
  static const kAboutView =  '/aboutView';
  static const kPrivacy =  '/privacy';
  static const kTerms =  '/terms';
  static const kMySubscription=  '/mySubscription';
  static const kPaymentView=  '/paymentView';
  static const kAddress = '/address';
  static const kWallet = '/wallet';
  static const kOrder = '/order';
  static const kContactUs = '/contactUs';
  static const kFaq = '/faq';
  static const kAddAddress = '/addAddress';


  static final  router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kLoginView,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: kRegisterView,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kExploreView,
        builder: (BuildContext context, GoRouterState state) {
          return const ExploreViewBody();
        },
      ),
      GoRoute(
        path: kFruitView,
        builder: (BuildContext context, GoRouterState state) {
          return FruitViewBody();
        },
      ),
      GoRoute(
        path: kDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return DetailsViewBody(fruitModel: state.extra as Model,);
        },
      ),
      GoRoute(
        path: kAboutView,
        builder: (BuildContext context, GoRouterState state) {
          return const AboutViewBody();
        },
      ),
      GoRoute(
        path: kPrivacy,
        builder: (BuildContext context, GoRouterState state) {
          return const PrivacyPolicyViewBody();
        },
      ),
      GoRoute(
        path: kTerms,
        builder: (BuildContext context, GoRouterState state) {
          return const TermsAndServices();
        },
      ),
      GoRoute(
        path: kMySubscription,
        builder: (BuildContext context, GoRouterState state) {
          return MySubscriptionViewBody();
        },
      ),
      GoRoute(
        path: kPaymentView,
        builder: (BuildContext context, GoRouterState state) {
          return const PaymentViewBody();
        },
      ),
      GoRoute(
        path: kAddress,
        builder: (BuildContext context, GoRouterState state) {
          return const MyAddress();
        },
      ),
      GoRoute(
        path: kWallet,
        builder: (BuildContext context, GoRouterState state) {
          return const MyWallet();
        },
      ),
      GoRoute(
        path: kOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const MyOrders();
        },
      ),
      GoRoute(
        path: kContactUs,
        builder: (BuildContext context, GoRouterState state) {
          return const ContactUs();
        },
      ),
      GoRoute(
        path: kFaq,
        builder: (BuildContext context, GoRouterState state) {
          return const FaqViewBody();
        },
      ),
      GoRoute(
        path: kAddAddress,
        builder: (BuildContext context, GoRouterState state) {
          return const AddNewAddress();
        },
      ),
    ],
  );
}