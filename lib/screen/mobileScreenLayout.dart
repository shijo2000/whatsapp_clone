import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contactsList.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
            elevation: 0,
            title: Text("WhatsApp",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: false,
            actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.grey,
            )
        ],
          bottom: TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
      ),
      body: SingleChildScrollView(

          child: ContactsList(),

      ),floatingActionButton: FloatingActionButton(
      onPressed: (){},backgroundColor: tabColor,
      child: Icon(Icons.comment,color: Colors.white,),
    ),
    ));
  }
}
