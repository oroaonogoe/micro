import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:micro/view/mobile/home/home_screen_mobile.dart';
import 'package:micro/view/mobile/login/login_screen_mobile.dart';
import 'package:micro/view/mobile/signup/sign_up_screen_mobile.dart';
import 'package:micro/view/mobile/verify/resend_verification_screen_mobile.dart';
import 'package:micro/view/mobile/verify/verify_email_screen_mobile.dart';
import 'package:micro/view/mobile/welcome/welcome_screen_mobile.dart';
import 'package:micro/view/web/home/home_screen_web.dart';
import 'package:micro/view/web/login/login_screen_web.dart';
import 'package:micro/view/web/signup/sign_up_screen_web.dart';
import 'package:micro/view/web/welcome/welcome_screen_web.dart';
import 'package:micro/widgets/custom_layout_builder.dart';

final appRouterProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder:
            (context, state) => CustomLayoutBuilder(
              webScreen: const WelcomeScreenWeb(),
              mobileScreen: const WelcomeScreenMobile(),
            ),
      ),
      GoRoute(
        path: '/login',
        builder:
            (context, state) => CustomLayoutBuilder(
              webScreen: const LoginScreenWeb(),
              mobileScreen: const LoginScreenMobile(),
            ),
      ),
      GoRoute(
        path: '/signup',
        builder:
            (context, state) => CustomLayoutBuilder(
              webScreen: const SignUpScreenWeb(),
              mobileScreen: const SignUpScreenMobile(),
            ),
      ),
      GoRoute(
        path: '/home',
        builder:
            (context, state) => CustomLayoutBuilder(
              webScreen: const HomeScreenWeb(),
              mobileScreen: const HomeScreenMobile(),
            ),
      ),
      GoRoute(
        name: 'verify',
        path: '/verify',
        builder:
            (context, GoRouterState state) => CustomLayoutBuilder(
              webScreen: VerifyEmailScreenMobile(),
              mobileScreen: VerifyEmailScreenMobile(),
            ),
      ),
      GoRoute(
        name: 'resend',
        path: '/resend',
        builder:
            (context, GoRouterState state) => CustomLayoutBuilder(
              webScreen: ResendVerificationScreenMobile(),
              mobileScreen: ResendVerificationScreenMobile(),
            ),
      ),
    ],
  ),
);
