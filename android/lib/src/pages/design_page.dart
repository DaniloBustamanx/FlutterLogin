
import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});
  
  get child => null;

  @override
  Widget build(BuildContext context){
    return Scaffold(

      //AppBar
      appBar: AppBar(
        iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
        ),
        title: const Center(
          
          child: Text('Alina Jokes', 
          style: TextStyle(color: Colors.black,),
          )
        ),
      //color de fondo del AppBar
        backgroundColor: Colors.white,
        actions: <Widget>[
              IconButton(
              icon: const Icon(
              Icons.edit_note,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
        // do something
      },
    )
  ],
      ),

      
      backgroundColor: Colors.white,

          
    body: Column
      (children: 
      
      [
        Expanded(child: ListView(
          children: const <Widget>[

       SizedBox(height: 25),
       
       Center(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       
            SizedBox(width: 15),
       
            
            CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 32, 146, 40),  
              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/6596/6596115.png'),
              
            ),
       
            SizedBox(width: 10),
       
            
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.yellow,
              backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/011/459/577/non_2x/black-circle-chat-or-message-icon-free-png.png'),
            ),
       
            SizedBox(width: 20),
       
            
            CircleAvatar(
              radius: 47,
            
              child: CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage('https://recursosweb.prisaradio.com/fotos/original/010002958029.png')
                  ),
            ),
       
            SizedBox(width: 20),
       
            
            CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 226, 64, 58),
              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/17/17577.png'),
            ),
       
            SizedBox(width: 10),
       
            
              CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 75, 62, 215),
              backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20190429/ourmid/pngtree-vector-share-icon-png-image_995095.jpg'),
            ),
       
            SizedBox(width: 20),
       
          ],
         ),
       ),
        
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Profile Info',
                  style:TextStyle(color: Colors.blueGrey, fontSize: 20,),
                ),
              ],
            ),
          ),  

        SizedBox(height: 0),

        
        Card(
          elevation: 4.0,
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: 
            ListTile(
              title: Text("Date of Birth", style: TextStyle(fontSize: 20, color: Colors.black),), 
              subtitle: Text("15 Feb 1996", style: TextStyle(fontSize:15, color: Colors.black ),),
              //trailing: Icon(Icons.abc),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.mode_sharp),
                  //Icon(Icons.edit),
                ],
              ),
            ),
        ),
      
      SizedBox(width: 25),
      
      Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),

            child: Row(children: [
                Expanded(
                  child: Text(
                    'Contact Info',
                   textAlign: TextAlign.start,
                   style:TextStyle(color: Colors.blueGrey, fontSize: 20,), 
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '+ Add',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                )
              ]),
          ),  


      //Main Number
      Card(
          elevation: 4.0,
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: 
            ListTile(
              title: Text("Main Number", style: TextStyle(fontSize: 20, color: Colors.black),), 
              subtitle: Text("+91 95221 81654", style: TextStyle(fontSize:15, color: Colors.black ),),
              //trailing: Icon(Icons.abc),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.block),
                  Icon(Icons.restore_from_trash),
                ],
              ),
            ),
        ),

        SizedBox(width: 25),

        //Email Info
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),

            child: Row(children: [
                Expanded(
                  child: Text(
                    'Email Info',
                   textAlign: TextAlign.start,
                   style:TextStyle(color: Colors.blueGrey, fontSize: 20,), 
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '+ Add',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                )
              ]),
          ),  

        //Main Email
        Card(
          elevation: 4.0,
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: 
            ListTile(
              title: Text("Main Email", style: TextStyle(fontSize: 20, color: Colors.black),), 
              subtitle: Text("test@gmail.com", style: TextStyle(fontSize:15, color: Colors.black ),),
              //trailing: Icon(Icons.abc),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Icon(Icons.block),
                  Icon(Icons.restore_from_trash),
                ],
              ),
            ),
        ),

        SizedBox(width: 25),

        //Address Info
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),

            child: Row(children: [
                Expanded(
                  child: Text(
                    'Address Info',
                   textAlign: TextAlign.start,
                   style:TextStyle(color: Colors.blueGrey, fontSize: 20,), 
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '+ Add',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                )
              ]),
          ),  

        //Home Town Address

        Card(
          elevation: 4.0,
          margin: EdgeInsets.all(20),
          color: Colors.white,

          child: 
            ListTile(
              title: Text("Home Town Address", style: TextStyle(fontSize: 20, color: Colors.black),), 
              subtitle: Text("56, Vivek Chowk, Ghatalodiya, 220523, Ahmedabab", style: TextStyle(fontSize:15, color: Colors.black ),),
              //trailing: Icon(Icons.abc),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.restore_from_trash),
                  //Icon(Icons.edit),
                ],
              ),
            ),
        ),

        //SizedBox(width: 25),

        Center(
          child: Card(
            
            elevation: 4.0,
            margin: EdgeInsets.all(20),
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topLeft: Radius.circular(50)
              ),
              ),
            
            //color
            color: Colors.white,
            child:SizedBox(
              width: 1000,
              height: 100,

            child: Align(alignment: Alignment.center, child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
              SizedBox(width: 30),
              
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage('data:image/png;base64,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'),  
                    
                  ),
         
              SizedBox(width: 20),
                    
              
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20221018/ourlarge/pngtree-twitter-social-media-round-icon-png-image_6315985.png'),
              ),
                    
              SizedBox(width: 20),
                    
              
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.pink,
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/017/743/717/non_2x/instagram-icon-logo-free-png.png'),
              ),
                    
              SizedBox(width: 20),
                    
              
                CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage('https://cdn3.iconfinder.com/data/icons/complete-set-icons/512/googleplus512x512.png'),
              ),

              SizedBox(width: 20),
            
              
                CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/148/148764.png'),
              ),
              SizedBox(width: 30),
              
                ],
              ),
            ),
              
          
        ),
          ),
        ),
        ],
        ),
        ),
      ],      
     ),      
    );
 
  }
}