import "package:flutter/material.dart";

class TextComposable extends StatefulWidget {
  const TextComposable({Key? key}) : super(key: key);

  @override
  State<TextComposable> createState() => _TextComposableState();
}

class _TextComposableState extends State<TextComposable> {

  final TextEditingController controller = TextEditingController();
  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
          ),
          Expanded(
              child: TextField(
                controller: controller,
                  decoration:
                      const InputDecoration.collapsed(hintText: "Send a text"),
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
                  onSubmitted: (text) {}
    ),
          ),
          IconButton(
              onPressed: _isComposing
                  ? () {}
                  : null,
              icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
