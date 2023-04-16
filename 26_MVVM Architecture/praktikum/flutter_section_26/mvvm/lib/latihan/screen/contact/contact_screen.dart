import 'package:flutter/material.dart';
import 'package:mvvm/latihan/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  // Menjalankan getAllContacts
  // Setelah halaman ditampilkan dan siap berinteraksi dengan pengguna
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Pada bagian build
    // Gunakan ViewModel
    // Ambil data contacts
    // Tampilkan pada ListView
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: modelView.contacts.length,
        itemBuilder: (context, index) {
          final contact = modelView.contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
          );
        },
      ),
    );
  }
}
