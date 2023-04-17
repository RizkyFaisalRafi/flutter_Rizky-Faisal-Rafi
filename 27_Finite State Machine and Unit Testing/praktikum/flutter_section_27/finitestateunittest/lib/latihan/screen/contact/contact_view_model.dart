import 'package:flutter/material.dart';

import '../../model/api/contact_api.dart';
import '../../model/contact_model.dart';

// Menambah Enum untuk masing" State
enum ContactViewState {
  none, // Saat IDDLE
  loading, // Saat RUNNING
  error, // Saat ERROR
}

// ViewModel untuk halaman ContactScreen
class ContactViewModel with ChangeNotifier {
  // Tambahkan Getter Setter untuk menyimpan state dari widget
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;
  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  // Property untuk menyimpan seluruh data Contact
  List<ContactModel> _contacts = [];

  // Getter untuk mengambil data dari property _contacts
  List<ContactModel> get contacts => _contacts;

  // Fungsi getAllContacts untuk:
  // Mengambil data contacts melalui Contact API
  // Menyimpan data contacts pada property _contacts
  getAllContacts() async {
    changeState(ContactViewState.loading);
    try {
      final c = await ContactApi.getContacts();
      _contacts = c;
      notifyListeners();
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }
}
