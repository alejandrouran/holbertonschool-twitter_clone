import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideBarMenu> createState() => MState();
}

class MState extends State<SideBarMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext action) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[CircleAvatar(backgroundImage: NetworkImage('https://i.picsum.photos/id/1027/2848/4272.jpg?hmac=EAR-f6uEqI1iZJjB6-NzoZTnmaX0oI0th3z8Y78UpKM'), maxRadius: 27,),],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[Text('Jane Doe',),],
                  ),),
                Row(
                  children: <Widget>[Text('275 Followers'), SizedBox(width: 20), Text('352 Following'),],
                ),],),),
          ListTile(
            leading: Icon(Icons.man),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: Text('Lists'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmark'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.flash_on_sharp),
            title: Text('Moments'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Settings and privacy', style: TextStyle(fontWeight: FontWeight.bold,)
            ),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Help Center', style: TextStyle(fontWeight: FontWeight.bold,)),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold,)),
            onTap: () => null,
          ),],),);
  }
}