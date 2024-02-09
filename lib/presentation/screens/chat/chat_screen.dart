import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'),
          ),
        ),
        title: const Text('Mi amor ♥️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBubble()
                          : const MyMessageBubble();
                    })),

            /// Caja de texto de mensajes
            const Text('mundo')
          ],
        ),
      ),
    );
  }
}
