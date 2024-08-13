import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Screen'),
          centerTitle: true,
          leading: Text(''),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                  ),
                  title: Text('Hi, Jerry',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Welcome to CoinBowl')),
              SizedBox(height: 20),
              ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Invite People'),
                  trailing: Icon(Icons.arrow_forward_ios)),
              SizedBox(height: 20),

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tokenstreet.jpg'),
                ),
                title: Text('Account'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(height: 20),

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tokenstreet.jpg'),
                ),
                title: Text('KYC'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(height: 20),

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tokenstreet.jpg'),
                ),
                title: Text('Transaction History'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(height: 20),

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tokenstreet.jpg'),
                ),
                title: Text('Send feed back'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

              SizedBox(height: 20),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tokenstreet.jpg'),
                ),
                title: Text('Security'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(height: 20),

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tokenstreet.jpg'),
                ),
                title: Text('Get help'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ));
  }
}
