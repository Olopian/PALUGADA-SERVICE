import 'package:flutter/material.dart';

class ChatTeknisi extends StatelessWidget {
  const ChatTeknisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Teknisi'),
      ),
      body: ListView(
        children: const [
          // Chat untuk Servisan Motor
          ChatSection(
            title: 'Servisan Motor',
            chats: [
              ChatBubble(
                sender: 'Teknisi Motor',
                message: 'Halo, ada yang bisa saya bantu?',
                time: '09:00',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'Halo, motor saya tidak bisa dihidupkan...',
                time: '09:05',
                isMe: true,
              ),
              ChatBubble(
                sender: 'Teknisi Motor',
                message: 'Baik, apa yang terjadi sebelumnya?',
                time: '09:06',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'Mesin tiba-tiba mati saat di jalan...',
                time: '09:07',
                isMe: true,
              ),
            ],
          ),
          // Chat untuk Servisan Mobil
          ChatSection(
            title: 'Servisan Mobil',
            chats: [
              ChatBubble(
                sender: 'Teknisi Mobil',
                message: 'Selamat pagi, ada yang bisa saya bantu?',
                time: '10:00',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'Pagi, rem mobil saya terasa blong...',
                time: '10:10',
                isMe: true,
              ),
              ChatBubble(
                sender: 'Teknisi Mobil',
                message: 'Kapan terakhir kali Anda mengganti kampas rem?',
                time: '10:15',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'Sudah lama sekali, mungkin lebih dari setahun...',
                time: '10:20',
                isMe: true,
              ),
            ],
          ),
          // Chat untuk Servisan AC
          ChatSection(
            title: 'Servisan AC',
            chats: [
              ChatBubble(
                sender: 'Teknisi AC',
                message: 'Halo, ada keluhan apa?',
                time: '11:00',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'AC di rumah saya tidak dingin...',
                time: '11:05',
                isMe: true,
              ),
              ChatBubble(
                sender: 'Teknisi AC',
                message: 'Sudah berapa lama AC tidak dingin?',
                time: '11:10',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'Sekitar dua hari ini...',
                time: '11:15',
                isMe: true,
              ),
            ],
          ),
          // Chat untuk Servisan Elektronik
          ChatSection(
            title: 'Servisan Elektronik',
            chats: [
              ChatBubble(
                sender: 'Teknisi Elektronik',
                message: 'Halo, ada masalah apa?',
                time: '12:00',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'TV saya tidak bisa menyala...',
                time: '12:05',
                isMe: true,
              ),
              ChatBubble(
                sender: 'Teknisi Elektronik',
                message: 'Apakah ada suara atau tanda lainnya?',
                time: '12:10',
                isMe: false,
              ),
              ChatBubble(
                sender: 'Anda',
                message: 'Tidak ada suara atau lampu indikator...',
                time: '12:15',
                isMe: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatSection extends StatelessWidget {
  final String title;
  final List<ChatBubble> chats;

  const ChatSection({
    required this.title,
    required this.chats,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ...chats,
      ],
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
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
                ? const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
            elevation: 5.0,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
