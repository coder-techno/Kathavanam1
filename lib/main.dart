import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/routes/app_router.dart'; // Import app router

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const KathaVanamApp());
}

class KathaVanamApp extends StatelessWidget {
  const KathaVanamApp({super.key});

  @gate
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'KathaVanam',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: const Color(0xFF4CAF50), // Digital tree green
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF4CAF50),
          secondary: Color(0xFF81C784),
          surface: Color(0xFF1E1E1E),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),
      routerConfig: appRouter, // GoRouter കോൺഫിഗറേഷൻ കണക്റ്റ് ചെയ്യുന്നു
    );
  }
}
