import 'package:flutter/material.dart';

void main() =>runApp( MaterialApp(
  home:Home(),
));
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int n= 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
       appBar:AppBar(
         title:Text(
           'Chedly ID Card',
           style: TextStyle(
             fontStyle: FontStyle.italic,
             fontWeight: FontWeight.bold,
           ),
         ),
         centerTitle: true,
         backgroundColor: Colors.grey[350],
         elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            n+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor:Colors.grey[700],
      ),
      body:Padding(
        padding:EdgeInsets.fromLTRB(30,40,30,0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/pabjpg.jpg"),
                radius:50.0,

              ),
            ),
            Divider(
              height:60.0,
              color: Colors.cyanAccent ,
            ),
            Text(
              "Full Name",
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
                fontSize: 18.0,
         ),
         ),
            SizedBox(height: 10,),
            Text(
              "Abassi Chedly",
               style: TextStyle(
                 color:Colors.cyanAccent,
                letterSpacing: 2.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Text(
               "Current Level",
                style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
                  fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "$n",
              style: TextStyle(
                color:Colors.cyanAccent,
                letterSpacing: 2.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children:<Widget>[
                Icon(
                    Icons.email,
                  color:Colors.white70,
                ),
                SizedBox(width: 10,),
                Text(
                  "santojawn@gmail.com",
                  style:TextStyle(
                    color:Colors.white70,
                    fontSize: 18.0,
                    letterSpacing: 1.0,

                  )
                ),
              ],
            )



          ],
        ),
      ),

    );
  }
}


