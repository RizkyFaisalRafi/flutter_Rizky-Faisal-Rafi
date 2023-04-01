import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:d_method/d_method.dart';
import 'package:open_file/open_file.dart';
import 'package:state_management_provider/model/model_data_advance.dart';

import '../animation/animations.dart';

class ContactPageAdvanceProvider with ChangeNotifier {
  Color _currentColor = Colors.orange;
  String? fileText = '';
  List<ModelDataAdvance> contacts = List.empty(growable: true);
  DateTime _dueDate = DateTime.now(); // Menyimpan tanggal yang dipilih user
  final currentDate = DateTime.now(); // Menyimpan tanggal hari ini
  var formKey = GlobalKey<FormState>();
  final edtName = TextEditingController();
  final edtNomor = TextEditingController();
  int selectedIndex = -1;

  /// Validasi Name
  String? validateName(name) {
    name = edtName.text;
    if (name.isEmpty) {
      return "Nama tidak boleh kosong";
    } else if (name.split('').length < 2) {
      return 'Nama harus terdiri dari minimal 2 kata';
    } else if (!name.startsWith(RegExp(r'[A-Z]'))) {
      return 'Kata harus dimulai dengan huruf kapital.';
    } else if (name.contains(RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\d-]'))) {
      return 'Nama tidak boleh mengandung angka/karakter khusus.';
    } else {
      return null;
    }
  }

  /// Validasi PhoneNumber
  String? validatePhone(phone) {
    phone = edtNomor.text;
    if (phone.isEmpty) {
      return "Nomor Telephone tidak boleh kosong";
    } else if (phone[0] != '0') {
      return 'Nomor Telephone harus dimulai dengan angka 0.';
    } else if (phone.length < 8 || phone.length > 15) {
      return 'Panjang Nomor Telephone Min 8 - Max 15 digit.';
    } else if (!RegExp(r'^\d+$').hasMatch(phone)) {
      return 'Nomor Telephone hanya boleh terdiri dari angka';
    } else {
      return null;
    }
  }

  /// Tambah
  void addContact(context) {
    String name = edtName.text.trim();
    String number = edtNomor.text.trim();
    String date = dueDate.toString();
    Color color = currentColor;

    if (formKey.currentState!.validate() && fileText!.isNotEmpty) {
      if (name.isNotEmpty &&
          number.isNotEmpty &&
          date.isNotEmpty &&
          color.toString().isNotEmpty &&
          fileText!.isNotEmpty) {
        contacts.add(
          ModelDataAdvance(
              name: name, contact: number, date: date, color: color),
        );
      }

      /// Print ke Debug Console
      DMethod.printBasic('Name: $name');
      DMethod.printBasic('number: $number');
      DMethod.printBasic('date: $date');
      DMethod.printBasic('color: $_currentColor');
      DMethod.printBasic('File: $fileText');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Data Sukses',
          ),
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      if (fileText!.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Data Gagal(Harap Masukan File/Nama/Nomor)',
            ),
            duration: Duration(seconds: 1),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Data Gagal',
            ),
            duration: Duration(seconds: 1),
          ),
        );
      }
    }
    notifyListeners();
  }

  /// Ubah
  dynamic changeContact(BuildContext context, int index) {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      maxLength: 25,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        fillColor: Color(0xffE7E0EC),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Name',
                        hintText: 'Insert Your Name',
                      ),
                      controller: edtName,
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
                      controller: edtNomor,
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    ElevatedButton(
                      onPressed: () {
                        String name = edtName.text.trim();
                        String number = edtNomor.text.trim();

                        if (name.isNotEmpty && number.isNotEmpty) {
                          contacts[selectedIndex].name = name;
                          contacts[selectedIndex].contact = number;
                          selectedIndex = -1;
                          Navigator.pop(context);
                        }
                        notifyListeners();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(90, 40),
                        backgroundColor: contacts[index].color,
                        shape: const StadiumBorder(),
                      ),
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
    selectedIndex = index;
  }

  ///  Hapus
  deleteContact(index) {
    contacts.removeAt(index);
    notifyListeners();
  }

  DateTime get dueDate => _dueDate;

  Color get currentColor => _currentColor;

  set currentColor(Color color) {
    _currentColor = color;
    notifyListeners();
  }

  void datePicker(BuildContext context) async {
    final selectDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(1990),
      lastDate: DateTime(currentDate.year + 10),
    );

    if (selectDate != null) {
      _dueDate = selectDate;
    }

    notifyListeners();
  }

  void pickFile(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) {
      return;
    }
    final file = result.files.first;

    fileText = file.path;

    _openFile(file);

    notifyListeners();
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  informaton(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      transitionDuration: const Duration(milliseconds: 600),
      barrierDismissible: true,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Animations.fromBottom(animation, secondaryAnimation, child);
      },
      pageBuilder: (animation, secondaryAnimation, child) {
        return SimpleDialog(
          title: const Text('Information'),
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date: $currentDate'),
                  const SizedBox(
                    height: 12,
                  ),
                  Text('FileName: $fileText'),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  /// Dispose untuk menghapus widget Controller ketika sudah tidak digunakan
  /// untuk mencegah kebocoran memory / memory leak
  @override
  void dispose() {
    edtName.dispose();
    edtNomor.dispose();
    super.dispose();
  }
}
