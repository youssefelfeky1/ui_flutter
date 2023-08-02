import 'package:flutter/material.dart';
import 'package:ui_flutter/main.dart';




class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key, required this.title});

  

  final String title;

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}







class _ForgetpasswordState extends State<Forgetpassword> {
  
  var _smsValue=false;
  var _emailValue=false;

 
  
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
        title: Text(
          widget.title,
        ),
      ),
      body:  SingleChildScrollView(
        child:Center(
          
         
            child: Column(
             
              
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 300),
                  child: const Text(
                    'Username',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(margin: const EdgeInsets.all(18),constraints: const BoxConstraints(maxWidth: 370),
                
                  child: TextFormField(
      
                    
                    decoration: const InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),border: OutlineInputBorder(),filled: true,fillColor: Color.fromARGB(255, 255, 255, 255),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 110, 106, 106)),)),
                    
                  ),
                ),
                Container(margin:const EdgeInsets.only(right: 250),
                  child: const Text(
                    'Investor Number',
                    
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 0, 0, 0),),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(margin: const EdgeInsets.all(18),constraints: const BoxConstraints(maxWidth: 370),
                  child: TextFormField(
                    
                    decoration: const InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),border: OutlineInputBorder(),filled: true,fillColor: Color.fromARGB(255, 255, 255, 255),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 110, 106, 106)),)),
                    
                  ),
                ),
                 Container(margin:const EdgeInsets.only(right: 250),constraints: const BoxConstraints(maxWidth: 370),
                  child: const Text(
                    'Account Number',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ),
                 Container(margin: const EdgeInsets.all(18),constraints: const BoxConstraints(maxWidth: 370),
                  child: TextFormField(
                    
                    
                    decoration: const InputDecoration(border: OutlineInputBorder(),filled: true,fillColor: Color.fromARGB(255, 255, 255, 255),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 110, 106, 106)),),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)))),
                    
                  ),
                ),
      
           
            
             
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  height: 150,
                 margin: const EdgeInsets.only(top: 10),
                  
                  constraints: const BoxConstraints(maxWidth: 370),
                  child: Column(
                    children: [
                    Container(margin: const EdgeInsets.only(right: 200,top: 10),
                      child: const Text("Receive Password by",)),
                    CheckboxListTile(
                  checkboxShape:const OvalBorder(),
                  
                    title: const Text("SMS",style: TextStyle(fontWeight: FontWeight.bold),),
                    activeColor: const Color.fromARGB(255, 15, 66, 6),
                    value: _smsValue,
                    selectedTileColor: const Color.fromARGB(255, 22, 87, 22),
                    
                    
                    
                
                    onChanged: (value) {
                      setState(() {
                        _smsValue = value!;
                        if(_emailValue) {
                          _emailValue=false;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    
                    checkboxShape:const OvalBorder(),
                    title: const Text("Email",style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Color.fromARGB(255, 15, 66, 6),),
                    activeColor: const Color.fromARGB(255, 15, 66, 6),
                    value: _emailValue,
                    
                
                    onChanged: (value) {
                      setState(() {
                        _emailValue = value!;
                        if(_smsValue) {
                          _smsValue=false;
                        }
                      });
                    },
                  ),
                    ],
                  ),
                ),
              )
            
                ,Container(
                  margin: const EdgeInsets.only(top: 65),
                  child: ElevatedButton(
                      onPressed: () async {
      
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Forget Password',)),);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 15, 66, 6)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize:
                            MaterialStateProperty.all<Size>(const Size(360, 60)),
                      ),
                      child: const Text(
                        "Recover Password",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                ),
              ],
            ),
          
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
