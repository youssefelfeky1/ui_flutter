import 'package:flutter/material.dart';
import 'package:ui_flutter/forgetpassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const Forgetpassword(title: 'Forget Password'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 240, 240, 240),
       
      appBar: AppBar(
       
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          
          onPressed: () {Navigator.pop(context);},
        ),
        
        centerTitle: true,
        title: Text(widget.title,),
        
        
      ),
      body:Center(
       
        child: SingleChildScrollView(
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Container(margin: const EdgeInsets.only(top: 100),
                
                child: const CircleAvatar(backgroundColor: Color.fromARGB(255, 255, 255, 255),radius: 60,backgroundImage: NetworkImage('https://www.freepnglogos.com/uploads/tick-png/image-tick-mark-icon-png-good-luck-charlie-wiki-2.png',),
                  )),
        
              Container(
                margin: const EdgeInsets.only(top: 20),
                
                child: const Text(
                  'Success!',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                '\n An SMS with your temporary password has been \n sent to your phone number',
                 style: TextStyle(fontSize: 15,color:  Color.fromARGB(255, 100, 99, 99)),
                 textAlign: TextAlign.center,
                 
                 
                ),
              
              Container(
                margin: const EdgeInsets.only(top: 230),
                child: ElevatedButton(
                  
                  onPressed: () async {
                    
                   
                  },
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 15, 66, 6)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                   minimumSize: MaterialStateProperty.all<Size>(const Size(360, 60)),
                ),
                  
                  child: const Text(
                    "Back to Login",
                    style: TextStyle(fontSize: 15,),
                    
                  )),
              )
            ],
          ),
        ),
      ),
     
      ); // This trailing comma makes auto-formatting nicer for build methods.
   
  }
}
