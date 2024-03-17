import 'package:e_commerce_app1_with_edit_flowers_app/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/auth/presentation/views/register_view.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/data/details_view.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

 final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
        ),
         GoRoute(
          path: '/LoginView',
          builder: (context, state) => const LoginView(),
          ),
        GoRoute(
          path: '/RegisterView',
          builder: (context, state) => const RegisterView(),
          ),
          GoRoute(
          path: '/HomeView',
          builder: (context, state) => const HomeView(),
          ),
          GoRoute(
          path: '/DetailsView',
          builder: (context, state) => const DetailsView(),
          ),
    ]
  );