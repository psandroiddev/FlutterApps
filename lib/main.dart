import 'package:flutter/material.dart';
import 'package:flutter_drawerdemo/routes/Routes.dart';

void main() => runApp(MyApp());

// Creating main application widget
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeDrawer(),
       routes: {
        Routes.primary: (context) => PrimaryScreen(),
         Routes.social: (context) => SocialScreen(),
         Routes.promotions: (context) => PromotionsScreen(),
       },
    );
  }

}

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Neosoft"),
      ),
      //body: Center( child: Text("We have Pressed the Button $_count times"),),
      body: Center( child: Text("Drawer Demo"),),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: Colors.blue,
        child: Container( height: 50.0,
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[UserAccountsDrawerHeader(
            accountName: Text('Neosoft Technologies'),
            accountEmail: Text('neosoft@gmail.com'),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.yellow,
              child: Text("abc"),
            ),
          ),

            ListTile(title: new Text("Inbox"),
              leading: new Icon(Icons.mail),
              onTap: (){
                print("Inbox clicked");
                Navigator.of(context).pop();
              },
            ),
            Divider(height: 0.1,),
            ListTile(title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
              onTap: () {
                print("Primary Clicked");
                Navigator.pushReplacementNamed(context, Routes.primary);
              },
            ),
            Divider(height: 0.1,),
            ListTile(title: new Text("Social"),
              leading: new Icon(Icons.people),
              onTap: (){
                print("Social Clicked");
                Navigator.pushReplacementNamed(context, Routes.social);
              },
            ),
            Divider(height: 0.1,),
            ListTile(title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
              onTap: (){
                print("Promotions Clicked");
                Navigator.pushReplacementNamed(context, Routes.promotions);
              },
            ),

          ],
        ),
      ),
    );
  }
}

class PrimaryScreen extends StatelessWidget {

  static const String routeName = '/primary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primary"),
      ),
      drawer: HomeDrawer(),
      body: Center(child: Text("Primary"),),
    );
  }
}

class SocialScreen extends StatelessWidget {
  static const String routeName = '/social';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social"),
      ),
      drawer: HomeDrawer(),
      body: Center(child: Text("Social"),),
    );
  }
}

class PromotionsScreen extends StatelessWidget {

  static const String routeName = '/promotions';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promotiions"),
      ),
      drawer: HomeDrawer(),
      body: Center(child: Text("Promotiions"),),
    );
  }
}


