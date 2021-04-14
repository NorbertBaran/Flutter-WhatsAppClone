import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/screens/camera/camera_screen.dart';
import 'package:whats_app/screens/chat/chat_screen.dart';
import 'package:whats_app/screens/connections/connections_screen.dart';
import 'package:whats_app/screens/state/state_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose(){
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: TabBarView(
          controller: _tabController,
          children: [
            CameraScreen(),
            ChatScreen(),
            StateScreen(),
            ConnectionsScreen()
          ],
        ),
        floatingActionButton: _bottomButtons(),
        bottomNavigationBar: null,
      ),
    );
  }

  AppBar _buildAppBar() {
    if(_tabController.index==0){
      return null;
    } else {
      return AppBar(
        backgroundColor: Colors.teal[900],
        title: Text('WhatsApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){}
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          tabs: [
            Container(
              width: 25,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Tab(
                icon: Icon(Icons.camera_alt),
              ),
            ),
            Container(
              width: 65,
              margin: EdgeInsets.symmetric(horizontal: 20),
                child: Tab(
                text: 'CZAT'
              )
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 65,
              child:  Tab(
                text: 'STATUS'
              )
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 65,
                child: Tab(
                text: 'POŁ.'
              ),
            )
          ]
        ),
      );
    }
  }

  Widget _bottomButtons(){

    if(_tabController.index==0){
      return null;
    } else if(_tabController.index==1){
      return FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
      );
    } else if(_tabController.index==2){
      return FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.green,
      );
    } else{
      return FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.phone),
        backgroundColor: Colors.green,
      );
    }
    //return FloatingActionButton(onPressed: null, child: Icon(Icons.camera_alt));
  }
}