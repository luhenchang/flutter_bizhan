import 'package:flutter/material.dart';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<HomeFragment>
    with SingleTickerProviderStateMixin {
  bool isVisible = false;
  var isTure = true;
  List<Widget> tabData = new List();
  TabController tablecontroller;

  _ChangeValue(val) {
    setState(() {
      isTure = val;
    });
  }

  @override
  void initState() {
    tablecontroller =new TabController(length:0, vsync: this);
    tabData.add(Text("最热"));
    tabData.add(Text("推荐"));
    tabData.add(Text("动漫"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 250, 150, 150)),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: <Widget>[
              //Image.asset("images/longnv5.jpeg"),
              Stack(
                alignment: Alignment(1.5, -1.4),
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      "images/longnv5.jpeg",
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                  Container(
                    width: 9.1,
                    height: 9.1,
                    decoration: BoxDecoration(
                        color: isTure ? Colors.redAccent : Colors.yellowAccent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1)),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  _ChangeValue(false);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 17.0, right: 13.0),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 4.0),
                  width: 180.0,
                  height: 30.0,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              Image.asset(
                "images/music_icon_subject.png",
                width: 38.0,
                height: 41.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Icon(
                  Icons.settings_applications,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        //TODO body里面写切换  //TODO第一个切换
        body: DefaultTabController(
          length:8,
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                child: TabBar(
                  tabs: tabData,
                  isScrollable:true,
                  controller: tablecontroller,
                ),
              ),
              Container(
                height: 50,
                child: TabBarView(children: <Widget>[
                  Container(child: Text("最热")),
                  Container(child: Text("最热")),
                  Container(child: Text("最热"))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
new ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: new EdgeInsets.only(top: 13.0),
              alignment: Alignment.center,
              height: 50.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "直播",
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: Color.fromARGB(255, 250, 150, 150),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("推荐"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("追波"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("国家宝藏"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("故事王"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                child: Image.asset(
                  "images/lonnv10.jpg",
                  fit: BoxFit.cover,
                  height: 120.0,
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.settings_applications,
                                size: 40.0,
                                color: Colors.greenAccent,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text("英雄联盟"),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.settings_applications,
                                size: 40.0,
                                color: Colors.greenAccent,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text("英雄联盟"),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.settings_applications,
                                size: 40.0,
                                color: Colors.greenAccent,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text("英雄联盟"),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.settings_applications,
                                size: 40.0,
                                color: Colors.greenAccent,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text("英雄联盟"),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.settings_applications,
                                size: 40.0,
                                color: Colors.greenAccent,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text("英雄联盟"),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 2,
              ),
            ),
            Container(
              height: 1.0,
              color: Colors.black12,
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("我的关注"),
                  ),
                  Text(
                    "16小时之前",
                    style: TextStyle(color: Colors.black26),
                  ),
                  Text("我的关注"),
                  Text(
                    "直播了见电台",
                    style: TextStyle(color: Colors.black26),
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: Colors.black12,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("推荐直播"),
                  Row(
                    children: <Widget>[
                      Text("缓一缓"),
                      Icon(
                        Icons.directions_run,
                        color: Colors.black26,
                        size: 20.0,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 580.0,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0)),
                                child: Image.asset(
                                  "images/lonnv10.jpg",
                                  fit: BoxFit.cover,
                                  width: 190.0,
                                  height: 100.0,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "陈哥1",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.perm_identity,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "8.5万人",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text("三局杀撸游戏ß"),
                        Text(
                          "其他游戏",
                          style: TextStyle(color: Colors.black26),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 6,
              ),
            ),
          ],
        ),
*/
