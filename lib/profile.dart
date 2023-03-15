import 'package:flutter/material.dart';

import 'widgets/profile_picture.dart';
import 'WIDGETS/info_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_left,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              "  Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfilePicture(),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        "Ajie Store",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Informasi Seller",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nama Toko"),
                    Text("Ajie Store",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nama Pemilik"),
                    Text("Halim Ajie",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nomor Telepon"),
                    Text("0853263742",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Alamat"),
                    Text("Jalan Celeng Indaramayu",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Username"),
                    Text("Sk*****e",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Password"),
                    Text("********",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Deskripsi"),
                    Text("Pakan Burung",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Edit Informasi  ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Tentang Lapak",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Pesanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: "Jam Buka",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
