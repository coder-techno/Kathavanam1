import 'package:go_router/go_router.dart';
import '../../features/auth/screens/splash_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/stories/screens/story_details_screen.dart';
import '../../features/reader/screens/reader_screen.dart';
import '../../features/profile/screens/profile_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // 1. Splash Screen
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    // 2. Login Screen
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    // 3. Home Screen
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    // 4. Story Details Screen
    GoRoute(
      path: '/details',
      builder: (context, state) => const StoryDetailsScreen(),
    ),
    // 5. Reader Screen
    GoRoute(
      path: '/reader',
      builder: (context, state) => const ReaderScreen(),
    ),
    // 6. Profile Screen
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
