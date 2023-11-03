import 'package:flutter/material.dart';

class RefresherButton extends StatefulWidget {
  final void Function() _refresherHandler;

  const RefresherButton(this._refresherHandler, {super.key});

  @override
  State<RefresherButton> createState() => _RefresherButtonState();
}

class _RefresherButtonState extends State<RefresherButton> {
  bool _wasPressed = true;

  // change visibility obj
  void _handlePressed() async {
    _toggleVisibilityButton();

    Future.sync(widget._refresherHandler)
        .then((_) => _toggleVisibilityButton())
        .catchError((e) => _toggleVisibilityButton());
  }

  void _toggleVisibilityButton() {
    // Future.delayed(const Duration(seconds: 2)).then((_) => );
    setState(() {
      _wasPressed = !_wasPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: AnimatedOpacity(
        duration: const Duration(microseconds: 800),
        opacity: _wasPressed ? 1.0 : 0.0,
        child: FloatingActionButton(
          tooltip: 'Refresh to get actual forecast.',
          onPressed: _handlePressed,
          child: const Icon(Icons.refresh_rounded),
        ),
      ),
    );
  }
}
