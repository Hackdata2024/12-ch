import 'package:acadease/screens/chat_screen.dart';
import 'package:acadease/widgets/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/models_provider.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ModelsProvider())],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: scaffoldBackgroundColor,
              appBarTheme: AppBarTheme(color: cardColor)),
          home: ChatScreen()),
    );
  }
}

// class Chats extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [ChangeNotifierProvider(create: (_) => ModelsProvider())],
//       child: MaterialApp(
//           title: 'Flutter Demo',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//               scaffoldBackgroundColor: scaffoldBackgroundColor,
//               appBarTheme: AppBarTheme(color: cardColor)),
//           home: ChatScreen()),
//     );
//   }
// }