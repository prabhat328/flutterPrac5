import 'package:flutter/material.dart';
import 'package:flutter_prac5/screens/faculty_screen.dart';
import 'package:flutter_prac5/screens/feedback_screen.dart';
import 'package:flutter_prac5/screens/notifications_screen.dart';
import 'package:flutter_prac5/screens/vision_mission_screen.dart';
import 'package:flutter_prac5/screens/webview_screen.dart';
import 'package:flutter_prac5/widgets/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _pageController = PageController(initialPage: _currentIndex);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _onTabTapped(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MCA Department')),
      drawer: AppDrawer(
        currentIndex: _currentIndex,
        onItemTapped: _onTabTapped,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          FacultySection(),
          VisionMissionSection(),
          NotificationsSection(),
          WebViewSection(),
          FeedbackSection(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: _tabController,
          isScrollable: false,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Theme.of(context).primaryColor,
          onTap: _onTabTapped,
          tabs: const [
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.visibility)),
            Tab(icon: Icon(Icons.notifications)),
            Tab(icon: Icon(Icons.web)),
            Tab(icon: Icon(Icons.feedback)),
          ],
        ),
      ),
    );
  }
}
