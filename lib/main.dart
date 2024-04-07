import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/services.dart';


var kColorScheme = ColorScheme.fromSeed(
  seedColor:Color.fromARGB(237, 90, 226, 247),
  );

  var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color.fromARGB(255, 99, 117, 106)
     );
void main(){
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn){
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(useMaterial3: true,
       colorScheme: kDarkColorScheme,
       cardTheme:const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16, 
              vertical: 8
              ),
           ),
       ),
    theme: ThemeData().copyWith(
          //  useMaterial3: true,
           colorScheme: kColorScheme,
           appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
           ),
           cardTheme:const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16, 
              vertical: 8
              ),
           ),
           elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
           ),
           textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 18,
            ),
          ),
        ),
        themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
// });
}