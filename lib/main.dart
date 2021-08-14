import 'package:dsc_shop/screens/login.dart';
import 'package:dsc_shop/tools/Theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChenger>(
      create: (_) => ThemeChenger(ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.red,
        colorScheme: ColorScheme.light(),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(Colors.white),
          trackColor: MaterialStateProperty.all(Colors.red),
        ),
      )),
      child: MaterialAppTheme(),
    );
  }
}

class MaterialAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChenger>(context);
    return MaterialApp(
      title: 'DSC Shop',
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: LogIn(),
    );
  }
}
