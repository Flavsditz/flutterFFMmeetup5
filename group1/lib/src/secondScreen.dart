import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/back1.jpg'),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          ListTile(
            title: Text('Minimalism Lifestyle',
              style: TextStyle(fontSize: 50)),
            trailing: CircleAvatar(
               child: Container(height: 100, color: Colors.orange,),),
          ),
          
          Text(
              "Being the savage's bowsman, That is, the person who pulled the bow-oar in his boat"),
          ListTile(
            title: Text('Jane Rose'),
            leading: CircleAvatar(
                radius: 30, backgroundImage: AssetImage('assets/image-1.png')),
            subtitle: Text('23,5k Followers'),
          )
        ],
      ),
    );
  }
}
