import 'package:flutter/material.dart';
import '../../animations/animations.dart';
import '../../model/model_data.dart';

class ContactPageProvider with ChangeNotifier {
  var formKey = GlobalKey<FormState>();
  var formKeyChange = GlobalKey<FormState>();
  final edtName = TextEditingController();
  final edtNomor = TextEditingController();
  final edtNameChange = TextEditingController();
  final edtNomorChange = TextEditingController();

  List<ModelData> contacts = List.empty(growable: true);

  void clearForm() {
    // formKey.currentState!.reset();
    edtName.clear();
    edtNomor.clear();
  }

  /// Validasi Name
  String? validateName(name) {
    if (name.isEmpty) {
      return "Nama tidak boleh kosong";
    } else if (name.split('').length < 2) {
      return 'Nama harus terdiri dari minimal 2 kata';
    } else if (name
        .split(' ')
        .any((element) => element[0] != element[0].toUpperCase())) {
      return 'Kata harus dimulai dengan huruf kapital.';
    } else if (name.contains(RegExp(r'[0-9]')) ||
        name.contains(RegExp(r'[!@#<>?":$_`~;[\]\\|=+)(*&^%0-9-]'))) {
      return 'Nama tidak boleh mengandung angka/karakter khusus.';
    } else {
      return null;
    }
  }

  /// Validasi PhoneNumber
  String? validatePhone(phone) {
    if (phone.isEmpty) {
      return "Nomor Telephone tidak boleh kosong";
    } else if (phone[0] != '0') {
      return 'Nomor Telephone harus dimulai dengan angka 0.';
    } else if (phone.length < 8 || phone.length > 15) {
      return 'Panjang Nomor Telephone Min 8 - Max 15 digit.';
    } else if (!RegExp(r'^[0-9]+$').hasMatch(phone)) {
      return 'Nomor Telephone hanya boleh terdiri dari angka';
    } else {
      return null;
    }
  }

  void addContact() {
    String name = edtName.text.trim();
    String number = edtNomor.text.trim();

    if (name.isNotEmpty && number.isNotEmpty) {
      contacts.add(
        ModelData(name: name, contact: number),
      );
    }
    notifyListeners();
  }

  void changeContact(int index, context) {
    int selectedIndex = -1;
    showGeneralDialog(
      context: context,
      barrierLabel: '',
      transitionDuration: const Duration(milliseconds: 600),
      barrierDismissible: true,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Animations.fromBottom(animation, secondaryAnimation, child);
      },
      pageBuilder: (animation, secondaryAnimation, child) {
        return SimpleDialog(
          title: const Text('Ubah'),
          children: [
            /// Form Name
            Form(
              key: formKeyChange,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        fillColor: Color(0xffE7E0EC),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Name',
                        hintText: 'Insert Your Name',
                      ),
                      controller: edtNameChange,
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    /// Form Number Telephone
                    TextFormField(
                      maxLength: 15,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        fillColor: Color(0xffE7E0EC),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Nomor',
                        hintText: '+62',
                      ),
                      controller: edtNomorChange,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String name = edtNameChange.text.trim();
                        String number = edtNomorChange.text.trim();

                        if (formKeyChange.currentState!.validate()) {
                          contacts[selectedIndex].name = name;
                          contacts[selectedIndex].contact = number;
                          selectedIndex = -1;
                          Navigator.pop(context);
                          clearForm();
                        }
                        notifyListeners();
                      },
                      child: const Text('Update'),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
    edtNameChange.text = contacts[index].name;
    edtNomorChange.text = contacts[index].contact;
    selectedIndex = index;
  }

  void deleteContact(index) {
    contacts.removeAt(index);
    notifyListeners();
  }

  /// Dispose untuk menghapus widget Controller ketika sudah tidak digunakan
  /// untuk mencegah kebocoran memory / memory leak
  @override
  void dispose() {
    edtName.dispose();
    edtNomor.dispose();
    edtNameChange.dispose();
    edtNomorChange.dispose();
    super.dispose();
  }
}
