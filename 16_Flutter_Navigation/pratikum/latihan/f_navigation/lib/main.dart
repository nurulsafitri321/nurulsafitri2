import 'package:f_navigation/contact/contact.dart';
import 'package:f_navigation/homePage.dart';
import 'package:flutter/material.dart';
import 'package:f_navigation/provider/provider.dart';
//import '';




void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => const Contact()),
        ChangeNotifierProvider(create: (_) => const ImageProvider()),
      ],
      child: const MyApp(),
   )
   );
}


      // MultiBlocProvider(
      //     providers: [
      //       BlocProvider<ImageBloc>(create: (_) => ImageBloc()),
      //       // Di sini Anda dapat menambahkan BlocProvider lain jika diperlukan
      //     ],
      //     child: const MyApp(),
      //   ),
      // );
//}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/gridview': (_) => const HomePage(),
        '/contact': (_) => const Contact(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}