import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contact_view_model.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<ContactViewModel>(context, listen: false);
      await viewModel.getAllContacts();
    });
  }

  // Menjalankan getAllContacts
  // Setelah halaman ditampilkan dan siap berinteraksi dengan pengguna
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    ContactViewModel viewModel = Provider.of<ContactViewModel>(context);
    // Pada bagian build
    // Gunakan ViewModel
    // Ambil data contacts
    // Tampilkan pada ListView
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact List'),
          centerTitle: true,
        ),
        body: body(viewModel));
  }

  // Informasi Finite State untuk menentukan seperti apa tampilan yang muncul.
  Widget body(ContactViewModel viewModel) {
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text('Gagal Mengambil Data.'),
      );
    }
    return listView(viewModel);
  }

  Widget listView(ContactViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.contacts.length,
      itemBuilder: (context, index) {
        final contact = viewModel.contacts[index];
        return ListTile(
          title: Text(contact.name),
          subtitle: Text(contact.phone),
        );
      },
    );
  }
}
