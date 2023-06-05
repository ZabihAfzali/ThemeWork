import 'package:flutter/material.dart';
import 'package:flutter_theme_work/ThemeData/screen_dark_theme.dart';
import 'package:flutter_theme_work/ThemeData/screen_light_theme.dart';
import 'package:flutter_theme_work/screen_theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=> new ThemeNotifier()),
    ],
    child: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeLight.lightTheme,
      darkTheme: ThemeDark.dark_theme,
      themeMode: context.watch<ThemeNotifier>().getThemeStatus
        ? ThemeMode.dark
      :ThemeMode.light,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _incrementCounter() {
    setState(() {

    });
  }
  bool is_dark_theme=true;

  @override
  Widget build(BuildContext context) {
    context.watch<ThemeNotifier>();

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text("Flutter Theme"),
      ),
      body: Center(
     child: Column(
       children:[

         InkWell(
           onTap: () async{
             final pref=await SharedPreferences.getInstance();
              await pref.setInt("counter", 10);
           },
           child: Text("Save value",style: Theme.of(context).textTheme.headline1,)
         ),
         InkWell(
             onTap: () async{
               final pref= await SharedPreferences.getInstance();
               final int? counter=pref.getInt("counter")?? 20;

               print("object counter $counter");

             },
             child: Text("Get value",style: Theme.of(context).textTheme.headline1,)
         ),




         Text(
           "Flutter theme",
           style: Theme.of(context).textTheme.headline1,
         ),
         InkWell(
           onTap: (){
             is_dark_theme=!is_dark_theme;
             Provider.of<ThemeNotifier>(context, listen: false)
                 .setThemeStatus(is_dark_theme,);
           },
             child:Padding(
               padding: EdgeInsets.all(20),
               child: Icon(
                Icons.icecream_rounded,
                 color: Theme.of(context).iconTheme.color,
                 size: Theme.of(context).iconTheme.size,
               ),
             ),
         )
       ]
     ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
