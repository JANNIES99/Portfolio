import 'package:flutter/material.dart';
import 'package:portfolio/constants/secret.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:portfolio/extenstion.dart';
import 'package:portfolio/style/apppadding.dart';

//put gmail as secret

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  bool isSending = false;

  Future<void> sendEmail() async {
    setState(() => isSending = true);

    String serviceId = Secret.serviceID;
    String templateId = Secret.templateID;
    String publicKey = Secret.publicKey;

    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "service_id": serviceId,
          "template_id": templateId,
          "user_id": publicKey,
          "template_params": {
            "from_name": nameController.text,
            "from_email": emailController.text,
            "message": messageController.text,
          },
        }),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Message sent ✅")));
        nameController.clear();
        emailController.clear();
        messageController.clear();
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Failed ❌: ${response.body}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    } finally {
      setState(() => isSending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: context.theme.colorScheme.surface,
        child: Container(
          width: 500,
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Contact Form", style: context.textStyle.titleLgBold),
                SizedBox(height: Insets.med),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Your Name",
                    border: OutlineInputBorder(),
                  ),
                  validator:
                      (value) =>
                          value!.isEmpty ? "Please enter your name" : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Your Email",
                    border: OutlineInputBorder(),
                  ),
                  validator:
                      (value) =>
                          value!.isEmpty ? "Please enter your email" : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: messageController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: "Message",
                    border: OutlineInputBorder(),
                  ),
                  validator:
                      (value) =>
                          value!.isEmpty ? "Please enter your message" : null,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed:
                      isSending
                          ? null
                          : () {
                            if (_formKey.currentState!.validate()) {
                              sendEmail();
                            }
                          },
                  child:
                      isSending
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Text(
                            "Send",
                            style: context.textStyle.bodyMdMedium.copyWith(
                              color: context.theme.colorScheme.onPrimary,
                            ),
                          ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
