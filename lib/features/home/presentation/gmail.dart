import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:portfolio/constants/secret.dart';
import 'package:http/http.dart' as http;

//put gmail as secret

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  Future<void> _sendEmail() async {
    if (_formKey.currentState!.validate()) {
      final Email email = Email(
        body:
            "From: ${_nameController.text}\n"
            "Email: ${_emailController.text}\n\n"
            "${_messageController.text}",
        subject: "New Contact Message",
        recipients: [Secret.gmail], // your email here
        isHTML: false,
      );

      try {
        await FlutterEmailSender.send(email);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Email app opened ✅")));
      } catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to open email app: $error")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Your Name'),
              validator:
                  (value) => value!.isEmpty ? 'Please enter your name' : null,
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Your Email'),
              validator:
                  (value) => value!.isEmpty ? 'Please enter your email' : null,
            ),
            TextFormField(
              controller: _messageController,
              maxLines: 4,
              decoration: const InputDecoration(labelText: 'Message'),
              validator:
                  (value) => value!.isEmpty ? 'Please enter a message' : null,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _sendEmail,
              icon: const Icon(Icons.send),
              label: const Text("Send Message"),
            ),
          ],
        ),
      ),
    );
  }
}
