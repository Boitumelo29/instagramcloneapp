import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/widgets/navigation/navigation.dart';

void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
// await Firebase.intiltialisedApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ScreenUtilInit(
          designSize: Size(375, 812),

          //go back to part 3 at 7:00 for how fix the navigation screen
          child: NavigationScreen(),
        ));
  }
}
