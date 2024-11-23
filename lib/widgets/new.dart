import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FocusBorderSizedBoxExample(),
    );
  }
}

class FocusBorderSizedBoxExample extends StatefulWidget {
  @override
  _FocusBorderSizedBoxExampleState createState() =>
      _FocusBorderSizedBoxExampleState();
}

class _FocusBorderSizedBoxExampleState
    extends State<FocusBorderSizedBoxExample> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  bool _hasFocus = false;
  bool _hasText = false;

  @override
  void initState() {
    super.initState();

    // Listen to focus changes
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });

    // Listen to text changes
    _controller.addListener(() {
      setState(() {
        _hasText = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Focus Border SizedBox Example'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 60,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: _hasFocus || _hasText ? Colors.blue[50] : Colors.grey[200],
              border: Border.all(
                color: _hasFocus ? Colors.blue : Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                focusNode: _focusNode,
                controller: _controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter text here',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
