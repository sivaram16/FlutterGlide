import 'package:flutter/material.dart';

class TabBarComponent extends StatelessWidget {
  final List<String> tabs;
  final List<Widget> tabViews;
  final Color color;

  TabBarComponent({@required this.tabs, @required this.tabViews, this.color});

  @override
  Widget build(BuildContext context) => body(context);

  Widget body(context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(5000),
          child: Container(
              height: 90.0,
              decoration: containerDecoration(),
              padding: EdgeInsets.only(top: 20),
              child: tabBarComponent()),
        ),
        body: TabBarView(children: tabViews),
      ),
    );
  }

  Decoration containerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.1),
          blurRadius: 16,
          offset: Offset(0, 4),
        )
      ],
    );
  }

  Widget tabBarComponent() {
    return TabBar(
      labelColor: color ?? Color(0xFFFF8652),
      unselectedLabelColor: Colors.black,
      indicator: CustomTabIndicator(),
      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      tabs: tabs.map((tab) => Tab(text: tab)).toList(),
    );
  }
}

/* ---------------------CUSTOM_PAINTER------------------------ */
class CustomTabIndicator extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback onChanged]) =>
      _CustomPainter(this, onChanged);
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    final Rect rect = Rect.fromLTWH(
        configuration.size.width / 2 + offset.dx - 35, offset.dy + 65, 75, 5);
    final Paint paint = Paint();
    paint.color = Color(0xFF01579A);
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(
          rect,
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        paint);
  }
}
