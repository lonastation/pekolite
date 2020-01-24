import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.create),
            ),
            new Tab(
              icon: new Icon(Icons.create_new_folder),
            ),
            new Tab(
              icon: new Icon(Icons.show_chart),
            ),
            new Tab(
              icon: new Icon(Icons.file_download),
            ),
            new Tab(
              icon: new Icon(Icons.history),
            )
          ],
          controller: _tabController,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Center(child: new Text('记录')),
          new Center(child: new Text('分类管理')),
          new Center(child: new Text('统计')),
          new Center(child: new Text('导入导出'),),
          new Center(child: new Text('系统日志'),)
        ],
      ),
    );
  }
}
