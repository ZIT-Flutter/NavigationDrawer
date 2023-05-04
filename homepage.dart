import 'package:flutter/material.dart';
import 'package:navigation_drawer/sample_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const userHeader = UserAccountsDrawerHeader(
      accountName: Text('Rakib Hossain'),
      accountEmail: Text('rakib2023@gmail.com'),
      currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text(
            'R',
            textScaleFactor: 2,
          )),
      otherAccountsPictures: [
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.blue,
        ),
        CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Text('B'),
        ),
      ],
    );
    final drawerItems = ListView(
      children: [
        userHeader,
        ListTile(
          title: Text('Go to Page 1'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SamplePage(pageData: 'Page 1'))),
        ),
        ListTile(
          title: Text('Go to Page 2'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SamplePage(pageData: 'Page 1'))),
        ),
        ListTile(
          title: Text('Settings'),
          leading: Icon(Icons.settings),
          subtitle: Text('Go to setting page'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SamplePage(pageData: 'Settings'))),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 200),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Log out'),
                  ))
            ],
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      body: Center(
        child: Text('My Home Page', textScaleFactor: 2),
      ),
      drawer: Drawer(child: drawerItems),
    );
  }
}
