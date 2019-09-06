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
        primarySwatch: Colors.blueGrey,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
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
                      Tab(
                          child: BouncingGrid(
                        size: 30,
                        color: Colors.white,
                      )),
                    ]),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                _buildFlipCircleTab(),
                _buildRotatingSquareTab(),
                _buildFlipBoxTab(),
                _buildBouncingGridTab(),
              ],
            )),
      ),
    );
  }

  Widget _buildFlipCircleTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default FlipCircle',
          FlipCircle(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipCircle(size: 30),
                FlipCircle(size: 40),
                FlipCircle(size: 50),
                FlipCircle(size: 60),
                FlipCircle(size: 70),
              ],
            ),
          ),
        ),
        _buildRow(
          'Border Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipCircle(borderSize: 2),
                FlipCircle(borderSize: 3),
                FlipCircle(borderSize: 5),
                FlipCircle(borderSize: 8),
                FlipCircle(borderSize: 13),
              ],
            ),
          ),
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipCircle(borderColor: Colors.cyan),
                FlipCircle(borderColor: Colors.blue),
                FlipCircle(borderColor: Colors.deepPurple),
                FlipCircle(borderColor: Colors.pink),
                FlipCircle(borderColor: Colors.deepOrange),
              ],
            ),
          ),
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                FlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                FlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                FlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                FlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.deepOrange,
                  duration: Duration(milliseconds: 900),
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
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default RotatingSquare',
          RotatingSquare(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RotatingSquare(
                  size: 30,
                ),
                RotatingSquare(
                  size: 40,
                ),
                RotatingSquare(
                  size: 50,
                ),
                RotatingSquare(
                  size: 60,
                ),
                RotatingSquare(
                  size: 70,
                ),
              ],
            ),
          ),
        ),
        _buildRow(
          'Border Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RotatingSquare(
                  borderSize: 2,
                ),
                RotatingSquare(
                  borderSize: 3,
                ),
                RotatingSquare(
                  borderSize: 5,
                ),
                RotatingSquare(
                  borderSize: 8,
                ),
                RotatingSquare(
                  borderSize: 13,
                ),
              ],
            ),
          ),
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RotatingSquare(borderColor: Colors.cyan),
                RotatingSquare(borderColor: Colors.blue),
                RotatingSquare(borderColor: Colors.deepPurple),
                RotatingSquare(borderColor: Colors.pink),
                RotatingSquare(borderColor: Colors.deepOrange),
              ],
            ),
          ),
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                RotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                RotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                RotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                RotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.deepOrange,
                  duration: Duration(milliseconds: 900),
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
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default FlipCircle',
          FlipBox(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipBox(size: 30),
                FlipBox(size: 40),
                FlipBox(size: 50),
                FlipBox(size: 60),
                FlipBox(size: 70),
              ],
            ),
          ),
        ),
        _buildRow(
          'Border Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipBox(
                  borderSize: 2,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                FlipBox(
                  borderSize: 3,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                FlipBox(
                  borderSize: 5,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                FlipBox(
                  borderSize: 8,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                FlipBox(
                  borderSize: 13,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipBox(backgroundColor: Colors.cyan),
                FlipBox(backgroundColor: Colors.blue),
                FlipBox(backgroundColor: Colors.deepPurple),
                FlipBox(backgroundColor: Colors.pink),
                FlipBox(backgroundColor: Colors.deepOrange),
              ],
            ),
          ),
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlipBox(
                  backgroundColor: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                FlipBox(
                  backgroundColor: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                FlipBox(
                  backgroundColor: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                FlipBox(
                  backgroundColor: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                FlipBox(
                  backgroundColor: Colors.deepOrange,
                  duration: Duration(milliseconds: 900),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBouncingGridTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default BouncingGrid',
          BouncingGrid(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BouncingGrid(size: 30),
                BouncingGrid(size: 40),
                BouncingGrid(size: 50),
                BouncingGrid(size: 60),
                BouncingGrid(size: 70),
              ],
            ),
          ),
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BouncingGrid(color: Colors.cyan),
                BouncingGrid(color: Colors.blue),
                BouncingGrid(color: Colors.deepPurple),
                BouncingGrid(color: Colors.pink),
                BouncingGrid(color: Colors.deepOrange),
              ],
            ),
          ),
        ),
        _buildRow(
          'Shape Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BouncingGrid(color: Colors.cyan, shape: BoxShape.circle),
                BouncingGrid(color: Colors.blue, shape: BoxShape.circle),
                BouncingGrid(color: Colors.deepPurple, shape: BoxShape.circle),
                BouncingGrid(color: Colors.pink, shape: BoxShape.circle),
                BouncingGrid(color: Colors.deepOrange, shape: BoxShape.circle),
              ],
            ),
          ),
        ),
        _buildRow(
          'Inverted Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BouncingGrid(color: Colors.cyan, inverted: true),
                BouncingGrid(color: Colors.blue, inverted: true),
                BouncingGrid(color: Colors.deepPurple, inverted: true),
                BouncingGrid(color: Colors.pink, inverted: true),
                BouncingGrid(color: Colors.deepOrange, inverted: true),
              ],
            ),
          ),
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BouncingGrid(
                  color: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                BouncingGrid(
                  color: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                BouncingGrid(
                  color: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                BouncingGrid(
                  color: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                BouncingGrid(
                  color: Colors.deepOrange,
                  duration: Duration(milliseconds: 900),
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
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Center(child: Text(title)),
        ),
        body,
        Divider(
          height: 30,
        ),
      ],
    );
  }
}
