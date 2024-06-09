import 'package:flutter/material.dart';

class ChatTeknisi extends StatelessWidget {
  const ChatTeknisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Teknisi'),
      ),
      body: ListView(
        children: [
          ChatBubble(
            sender: 'Teknisi A',
            message: 'Halo, ada yang bisa saya bantu?',
            time: '09:00',
            isMe: false,
          ),
          // Tambahkan chat lainnya
          ChatBubble(
            sender: 'Anda',
            message: 'Halo, saya memiliki masalah dengan AC saya...',
            time: '09:05',
            isMe: true,
          ),
          ChatBubble(
            sender: 'Teknisi A',
            message: 'Baik, apa masalahnya?',
            time: '09:06',
            isMe: false,
          ),
          ChatBubble(
            sender: 'Anda',
            message: 'AC saya tidak dingin sejak kemarin...',
            time: '09:07',
            isMe: true,
          ),
          // dan seterusnya...
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String sender;
  final String message;
  final String time;
  final bool isMe;

  const ChatBubble({
    required this.sender,
    required this.message,
    required this.time,
    required this.isMe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[600],
            ),
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
            elevation: 5.0,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                message,
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
