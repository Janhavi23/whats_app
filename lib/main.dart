import 'package:flutter/material.dart';

void main() => runApp(Whats_app());

class Whats_app extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  @override
  TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController(
        length: 3,
        initialIndex: 0,
        vsync:this);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[

            Tab(
              child:Text('Chats',
              style: TextStyle(
                fontSize: 20
              ),),
            ),
            Tab(
              child:Text('Status',style: TextStyle(
                  fontSize: 20
              )),
            ),

            Tab(
              child:Text('Calls',style: TextStyle(
                  fontSize: 20
              )),
            ),
          ],

        ),
        title: Text('Whatsapp',style: TextStyle(
          fontSize: 25
        ),),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {

            },),
          IconButton(
              icon:Icon(Icons.more_vert) ,
              onPressed: (){},
            color: Colors.white,
          )],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //TODO
        },
        child: Icon(
          Icons.chat
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int count)
        {
          return Whatsapp_card();
        },
      ),
    );
  }
}


class Whatsapp_card extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      height: 95,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 10),
            child: Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 75
            )),
            Padding(padding: EdgeInsets.only(bottom: 15),
            child:
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                   'Janhavi',
                  style: TextStyle(
                    fontFamily: 'Mansalva',
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      size: 20,
                      color: Colors.grey
                    ),
                    Text(
                      'YO!!!',
                      style:
                      TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
               
              ],
              

            ),),
          Expanded(child: Container()),
          Padding(padding: EdgeInsets.only(bottom: 30),
          child: Text('10:30',
          style: TextStyle(
            fontSize: 13
          ),),)
          
        ],
      ),

    );
  }
}


