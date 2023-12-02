import 'package:chat/ui/pages/chat/composer/text_composable.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar (
        title: const  Text ( "Ola Cássia"),
        elevation: 0,
      ),
      body: const TextComposable (),

    );
  }
}
