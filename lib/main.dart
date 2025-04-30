import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:school_app/auth/login/login.dart';
import 'package:school_app/auth/service/login_provider.dart';
import 'package:school_app/constants/constants.dart';
import 'package:school_app/constants/themeprovider.dart';
import 'package:provider/provider.dart';
import 'package:school_app/student/navbar/bottomnavigation.dart';

void main() async {
  await GetStorage.init();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Themeprovider()),
    ChangeNotifierProvider(create: (_) => LoginProvider())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    bool hasdate = box.hasData(isllogedIn);
    box.read(role);
    final themeProvider = Provider.of<Themeprovider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      themeMode: themeProvider.currentMode,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.blueGrey[900],
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey[800],
        ),
        colorScheme: ColorScheme.dark(
          primary: Colors.blueGrey,
          secondary: Colors.lightBlueAccent,
        ),
      ),
      home: hasdate ? getrole(role) : LoginScreen(),
    );
  }
}
