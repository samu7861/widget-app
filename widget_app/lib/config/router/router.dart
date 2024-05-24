import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: '/Buttons',
      builder: (context, state) => ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      builder: (context, state) => CardsScreen(),
    ),
  ],
);