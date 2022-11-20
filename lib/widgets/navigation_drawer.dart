import 'package:erudiov1/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        //color: Color(0xFF658D95),
        color: Colors.white60,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Aaron'),
              accountEmail: Text('aaron@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/images/user_pic.png",
                      fit: BoxFit.cover),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://papers.co/wallpaper/papers.co-mu42-mountain-fog-nature-white-blue-sky-view-35-3840x2160-4k-wallpaper.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'About Us',
                icon: Icons.people_outlined,
                onClicked: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                    )),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Contact Us',
                icon: Icons.contact_page_outlined,
                onClicked: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                    )),
            const SizedBox(height: 24),
            Divider(
              color: Colors.black,
              indent: 20.0,
              endIndent: 20.0,
            ),
            const SizedBox(
              height: 24,
            ),
            buildMenuItem(
                text: 'Log Out',
                icon: Icons.logout_outlined,
                onClicked: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                    ))
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.white70;

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onClicked,
    );
  }
}
