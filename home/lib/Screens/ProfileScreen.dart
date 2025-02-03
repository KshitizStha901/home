import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  final String? profileImageUrl = 'https://as1.ftcdn.net/v2/jpg/01/27/72/62/1000_F_127726206_FsBhUzLD6BEr1JgP8dpgeQAtjJwlruuw.jpg';
  final String? firstName = 'Kshitiz';
  final String? lastName = 'Shrestha';
  final String? email = 'sth123@gmail.com';
  
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 16, 16),
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 27, 26, 26),
        foregroundColor: const Color.fromARGB(255, 224, 213, 213),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(profileImageUrl!),
          ),
          const SizedBox(height: 10),
          Text(
            "$firstName $lastName",
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            email!,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 28, 28),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  title: const Text(
                    "Personal Information",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/vehicle');
                  },
                  title: const Text(
                    "Vehicle Information",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  title: const Text(
                    "Privacy Settings",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  title: const Text(
                    "Support",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 28, 28),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  title: const Text(
                    "Log Out",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,   
        onTap: onTap,  
        backgroundColor: Colors.transparent,
        elevation: 0,   
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.transparent,),
          BottomNavigationBarItem(icon: Icon(Icons.fire_truck),label: "Vehicle",backgroundColor: Colors.transparent,),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications",backgroundColor: Colors.transparent,),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: Colors.transparent,),
        ],
      ),
    );
  }
}
