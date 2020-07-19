import 'package:flutter/material.dart';
import 'package:vero/UI/dresses.dart';
import 'package:vero/UI/jacjets.dart';
import 'package:vero/UI/skirts.dart';
import 'package:vero/UI/tops.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const kTablet = 720.0;
const kDesktop = 1200.0;
const kSideMenu = 250.0;

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      if (dimens.maxWidth >= kDesktop) {
        return Material(
          child: Row(
            children: [
              Container(
                width: kSideMenu,
                child: ListView(
                  children: [
                    ListTile(
                      selected: _currentIndex == 0,
                      title: Text(
                        'Tops',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(Icons.flare),
                      onTap: () {
                        if (mounted)
                          setState(() {
                            _currentIndex = 0;
                          });
                      },
                    ),
                    ListTile(
                      selected: _currentIndex == 1,
                      title: Text(
                        'Dresses',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(Icons.flare),
                      onTap: () {
                        if (mounted)
                          setState(() {
                            _currentIndex = 1;
                          });
                      },
                    ),
                    ListTile(
                      selected: _currentIndex == 2,
                      title: Text(
                        'Skirts',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(Icons.flare),
                      onTap: () {
                        if (mounted)
                          setState(() {
                            _currentIndex = 2;
                          });
                      },
                    ),
                    ListTile(
                      selected: _currentIndex == 3,
                      title: Text(
                        'Jackets',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(Icons.flare),
                      onTap: () {
                        if (mounted)
                          setState(() {
                            _currentIndex = 3;
                          });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: buildBody(),
              )
            ],
          ),
        );
      }
      if (dimens.maxWidth >= kTablet) {
        return Material(
          child: Row(
            children: [
              NavigationRail(
                labelType: NavigationRailLabelType.all,
                selectedIndex: _currentIndex,
                onDestinationSelected: (val) {
                  if (mounted)
                    setState(() {
                      _currentIndex = val;
                    });
                },
                destinations: [
                  NavigationRailDestination(
                    label: Text(
                      'Tops',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    icon: Icon(Icons.flare),
                  ),
                  NavigationRailDestination(
                    label: Text(
                      'Dresses',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    icon: Icon(Icons.flare),
                  ),
                  NavigationRailDestination(
                    label: Text(
                      'Skirts',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    icon: Icon(Icons.flare),
                  ),
                  NavigationRailDestination(
                    label: Text(
                      'Jackets',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    icon: Icon(Icons.flare),
                  ),
                ],
              ),
              Expanded(
                child: buildBody(),
              )
            ],
          ),
        );
      }
      return Scaffold(
        body: buildBody(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (val) {
            if (mounted)
              setState(() {
                _currentIndex = val;
              });
          },
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Tops',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              icon: Icon(Icons.flare),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Dresses',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              icon: Icon(Icons.flare),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Skirts',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              icon: Icon(Icons.flare),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Jackets',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              icon: Icon(Icons.flare),
            ),
          ],
        ),
      );
    });
  }

  IndexedStack buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        Tops(),
        Dresses(),
        Skirts(),
        Jackets(),
      ],
    );
  }
}
