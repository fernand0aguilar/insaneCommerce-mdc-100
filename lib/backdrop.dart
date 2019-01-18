import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'model/product.dart';

// TODO -> add velocity constant
class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    @required this.currentCategory,
    @required this.frontLayer,
    @required this.backLayer,
    @required this.frontTitle,
    @required this.backTitle,
  }) : assert(currentCategory != null),
       assert(frontLayer != null),
       assert(backLayer != null),
       assert(frontTitle != null),
       assert(backTitle != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');

  // TODO: Add animationController Widget
  // TODO: Add buildContext and BoxConstraints parameters to _buildStack

  Widget _buildStack() {
    return Stack (
      key: _backdropKey,
      children: <Widget>[
        widget.backLayer,
        widget.frontLayer,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      brightness: Brightness.light,
      elevation: 0.0,
      titleSpacing: 0.0,
      // TODO -> Replace leading menu icon with IconButton
      // TODO -> Remove leading property
      // TODO -> Create title with _BackdropTitle parameter
      leading: Icon(Icons.menu),
      title: Text('InsanEcommerce'),
      actions: <Widget> [
        IconButton (
          icon: Icon(
            Icons.search,
            semanticLabel: 'search',
          ),
          onPressed: () {
            // TODO -> ADD open Login
          },
        ),
        IconButton(
          icon: Icon(
            Icons.tune,
            semanticLabel: 'filter',
          ),
          onPressed: () {
            // TODO -> Add open Login
          },
        ),
      ],
    );
    return Scaffold (
      appBar: appBar,
      // TODO -> return a layoutBuilder widget
      body: _buildStack(),
    );
  }
}

// TODO: Add _FrontLayer class (104)
// TODO: Add _BackdropTitle class (104)
// TODO: Add _BackdropState class (104)