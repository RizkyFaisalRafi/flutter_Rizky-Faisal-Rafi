import 'package:flutter/material.dart';
import 'package:mvvm/latihan/model/api/contact_api.dart';
import 'package:mvvm/latihan/model/contact_model.dart';

// ViewModel untuk halaman ContactScreen
class ContactViewModel with ChangeNotifier {
  // Property untuk menyimpan seluruh data Contact
  List<ContactModel> _contacts = [];

  // Getter untuk mengambil data dari property _contacts
  List<ContactModel> get contacts => _contacts;

  // Fungsi getAllContacts untuk:
  // Mengambil data contacts melalui Contact API
  // Menyimpan data contacts pada property _contacts
  getAllContacts() async {
    final c = await ContactApi.getContacts();
    _contacts = c;
    notifyListeners();
  }
}
