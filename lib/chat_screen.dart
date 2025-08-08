import 'package:flutter/material.dart';
import 'package:food_delivery/callscreen.dart';
import 'package:food_delivery/chatdp.dart';
import 'package:food_delivery/chats_list.dart';
import 'package:food_delivery/models/chatsdata_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.chatDataModel});
  //final String name;
  final ChatDataModel chatDataModel;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class ChatMessage {
  final String text;
  final bool isSender; // true = you, false = bot/receiver

  ChatMessage({required this.text, required this.isSender});
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> messages = [];
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;

    setState(() {
      messages.add(ChatMessage(text: text.trim(), isSender: true));
    });

    _controller.clear();
    _scrollToBottom();

    // Simulate a reply after a short delay
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        messages.add(
          ChatMessage(text: 'This is a text message', isSender: false),
        );
      });
      _scrollToBottom();
    });
  }

  void _scrollToBottom() {
    Future.delayed(Duration(milliseconds: 100), () {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  Widget _buildMessage(ChatMessage msg) {
    return Align(
      alignment: msg.isSender ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: msg.isSender ? Colors.grey[300] : Colors.blue[200],
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(msg.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Chat'),
        backgroundColor: Colors.white60,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Callscreen()),
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Chatdp(chatDataModel: widget.chatDataModel),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(messages[index]);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration.collapsed(
                      hintText: "Type a message...",
                    ),
                    onSubmitted: _sendMessage,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.blue),
                  onPressed: () => _sendMessage(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}














// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         left: true,
//         right: true,
//         bottom: true,
//         top: true,
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.separated(
//                 itemBuilder: (context, index) {
//                   return Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.lightBlueAccent,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                         left: 15,
//                         right: 15,
//                         top: 10,
//                         bottom: 10,
//                       ),
//                       child: Text(
//                         'this is a test message',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   );
//                 },
//                 separatorBuilder: (context, index) {
//                   return Divider(height: 7);
//                 },
//                 itemCount: 10,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

