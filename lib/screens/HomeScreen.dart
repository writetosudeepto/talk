import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Pages/ChatPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp clone'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton<String>(itemBuilder:(BuildContext context){
            return [
              const PopupMenuItem(
                value: 'New group',
                child: Text('New group'),
              ),
              const PopupMenuItem(
                value: 'New broadcast',
                child: Text('New broadcast'),
              ),
              const PopupMenuItem(
                value: 'Linked devices',
                child: Text('Linked devices'),
              ),
              const PopupMenuItem(
                value: 'Starred messages',
                child: Text('Starred messages'),
              ),
              const PopupMenuItem(
                value: 'Settings',
                child: Text('Settings'),
              ),
            ];
          },
          onSelected: (String value){
            if (kDebugMode) {
              print(value);
            }
          },
          )
          // IconButton(
          //   icon: const Icon(Icons.more_vert),
          //   onPressed: () {},
          // ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Camera'),
          ),
         ChatPage(),
          Center(
            child: Text('Status'),
          ),
          Center(
            child: Text('Calls'),
          ),
        ],
      ),
    );
  }
}
