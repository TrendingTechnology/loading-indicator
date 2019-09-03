import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Indicators',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Flutter Loading Indicators'),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(44.0),
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                      Tab(
                          child: FlipCircle(
                        size: 30,
                        borderColor: Colors.white,
                      )),
                      Tab(
                          child: RotatingSquare(
                        size: 30,
                        borderColor: Colors.white,
                      )),
                      Tab(
                          child: FlipBox(
                        size: 30,
                        backgroundColor: Colors.white,
                      )),
                    ]),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                // FLIP CIRCLE
                _buildFlipCircleTab(context),
                _buildRotatingSquareTab(),
                _buildFlipBoxTab(),
              ],
            )),
      ),
    );
  }

  Widget _buildFlipCircleTab(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        _buildRow(
          'Default FlipCircle',
          FlipCircle(),
        ),
        _buildRow(
          'Color Variations',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipCircle(
                  borderColor: Colors.cyan,
                ),
                FlipCircle(
                  borderColor: Colors.blue,
                ),
                FlipCircle(
                  borderColor: Colors.deepPurple,
                ),
                FlipCircle(
                  borderColor: Colors.pink,
                ),
                FlipCircle(
                  borderColor: Colors.deepOrange,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRotatingSquareTab() {
    return ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        _buildRow('Default Rotating Square', RotatingSquare()),
        _buildRow(
          'Color Variations',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RotatingSquare(
                  borderColor: Colors.cyan,
                ),
                RotatingSquare(
                  borderColor: Colors.blue,
                ),
                RotatingSquare(
                  borderColor: Colors.deepPurple,
                ),
                RotatingSquare(
                  borderColor: Colors.pink,
                ),
                RotatingSquare(
                  borderColor: Colors.deepOrange,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFlipBoxTab() {
    return ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        _buildRow('Default Flip Box', FlipBox()),
        _buildRow(
          'Color Variations',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipBox(
                  backgroundColor: Colors.cyan,
                ),
                FlipBox(
                  backgroundColor: Colors.blue,
                ),
                FlipBox(
                  backgroundColor: Colors.purple,
                ),
                FlipBox(
                  backgroundColor: Colors.pink,
                ),
                FlipBox(
                  backgroundColor: Colors.deepOrange,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRow(String title, Widget body) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Center(child: Text(title)),
        ),
        body,
        Divider(
          height: 50,
        ),
      ],
    );
  }
}
