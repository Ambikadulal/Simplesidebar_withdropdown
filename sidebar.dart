import 'package:aahakhabar_app/screen/downloadpage.dart';
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

import 'DropdownScreen.dart';

class sidebar extends StatefulWidget {
  const sidebar({Key key}) : super(key: key);

  @override
  _sidebarState createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
   return Container(
    child: Container(
      child: MultiLevelDrawer(
        backgroundColor: Colors.white,
        rippleColor: Colors.white,
        subMenuBackgroundColor: Colors.grey.shade100,
        header: Container(                // Header for Drawer
          // height: size.height * 0.25,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(
                        "logo-new.png",
                      )),
                ),
              ),
              Container(
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                  children: <Widget>[
                    //Icon(Icons.bookmark),
                    //Text('aa'),

                    MaterialButton(height: 5,minWidth: 2,
                      child:
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DropdownScreen(),
                              ));
                        },
                        icon: Icon(
                          Icons.bookmark_border,
                          color: Colors.red,
                        ),
                        label: Text('बुकमार्क '),
                      ),
                     ),
                    MaterialButton(
                      child: FlatButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => downloadpage(),
                              ));
                        },
                        icon: Icon(
                          Icons.file_download,
                          color: Colors.red,
                        ),
                        label: Text('डाउनलोड सामग्री'),
                      ),
                    ),
                   ],
                ),
              ),),
              SizedBox(height: 5,),
            ],
          )),
        ),
divisionColor: Colors.red,

        children: [           // Child Elements for Each Drawer Item
          MLMenuItem(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              content: Text(
                "Top Category",
              ),
              subMenuItems: [
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                  context,
                  'Rajniti',
                );}, submenuContent: Text("राजनीतिक")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'socity',
                  );
                }, submenuContent: Text("समाज")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'Aarthbazar',
                  );
                }, submenuContent: Text("आर्थिक")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'aahatv',
                  );
                }, submenuContent: Text("आहा टिभी")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'international',
                  );
                }, submenuContent: Text("अन्तर्राष्ट्रिय")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'khela',
                  );
                }, submenuContent: Text("खेल")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'manoranjan',
                  );
                }, submenuContent: Text("मनोरन्जन")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'SchoolandCollege',
                  );
                }, submenuContent: Text("शिक्षा ")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(
                    context,
                    'prabidhi',
                  );
                }, submenuContent: Text("प्रविधि")),
              ],
              onClick: () {}),
          MLMenuItem(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_right),
              content: Text("Other Category"),
              onClick: () {},
              subMenuItems: [
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(context, 'aboutus');
                }, submenuContent: Text("हाम्रो बारेमा")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(context, 'ourteam');
                }, submenuContent: Text("हाम्रो टिम")),
                MLSubmenu(onClick: () {
                  Navigator.pushNamed(context, 'Rashifal');
                }, submenuContent: Text("राशिफल"))
              ]),
     ]),
      ),
    );
  }
    }
