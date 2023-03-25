import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_section_16/model/model_data_advance.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';
import 'package:d_method/d_method.dart';

class ContactPageAdvance extends StatefulWidget {
  const ContactPageAdvance({super.key, required this.title});

  final String title;

  @override
  State<ContactPageAdvance> createState() => _ContactPageAdvanceState();
}

class _ContactPageAdvanceState extends State<ContactPageAdvance> {
  final edtName = TextEditingController();
  final edtNomor = TextEditingController();

  List<ModelDataAdvance> contacts = List.empty(growable: true);

  var formKey = GlobalKey<FormState>();
  final list = [];
  int selectedIndex = -1;

  DateTime _dueDate = DateTime.now(); // Menyimpan tanggal yang dipilih user
  final currentDate = DateTime.now(); // Menyimpan tanggal hari ini

  Color _currentColor = Colors.orange;
  String? fileText = '';

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
    } else if (name.contains(RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\d-]'))) {
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
    } else if (!RegExp(r'^\d+$').hasMatch(phone)) {
      return 'Nomor Telephone hanya boleh terdiri dari angka';
    } else {
      return null;
    }
  }

  Widget header() {
    return Column(
      children: [
        Image.asset(
          'assets/icon_contact.png',
          height: 30,
          width: 30,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text('Create New Contacts',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28)),
        const Padding(
          padding: EdgeInsets.only(left: 32, right: 32, top: 24),
          child: Text(
            'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        const Divider(
          height: 20,
          indent: 30,
          endIndent: 30,
          thickness: 2,
        ),
      ],
    );
  }

  /// DatePicker
  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 10),
                );

                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            ),
          ],
        ),
        Text(
          DateFormat('dd-MM-yyyy').format(_dueDate),
        ),
      ],
    );
  }

  /// ColorPicker
  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 12,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            child: const Text('Pick Color'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Pick Your Color'),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: _currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Save'))
                      ],
                    );
                  });
            },
          ),
        )
      ],
    );
  }

  /// FilePicker
  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pick Files'),
        const SizedBox(
          height: 12,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              _pickFile();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            child: const Text('Pick and Open File'),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text('$fileText'),
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) {
      return;
    }
    final file = result.files.first;
    setState(() {
      fileText = file.path;
    });
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  Widget formGroup() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            /// Form Name
            TextFormField(
              maxLength: 25,
              validator: (value) => validateName(value),
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
              validator: (value) => validatePhone(value),
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
            const Divider(thickness: 1, color: Colors.grey),
            buildDatePicker(context),
            const Divider(thickness: 1, color: Colors.grey),
            buildFilePicker(),
            const Divider(thickness: 1, color: Colors.grey),
            buildColorPicker(context),

            Align(
              heightFactor: 2,
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate() && fileText!.isNotEmpty) {
                    addContact();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Data Sukses',
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
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(90, 40),
                  backgroundColor: _currentColor,
                  shape: const StadiumBorder(),
                ),
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listContact() {
    return Column(
      children: const [
        Text(
          'List Contacts',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }

  Widget getRowList(int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: contacts[index].color,
        child: Text(
          contacts[index].name[0],
          style: const TextStyle(color: Colors.black),
        ),
      ),
      title: Text(contacts[index].name),
      subtitle: Text(contacts[index].contact),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              changeContact(index);
              edtName.text = contacts[index].name;
              edtNomor.text = contacts[index].contact;
              setState(
                () {
                  selectedIndex = index;
                },
              );
            },
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              deleteContact(index);
            },
            icon: const Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
              informaton(context);
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
    );
  }

  informaton(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
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
            )
          ],
        );
      },
    );
  }

  /// Tambah
  addContact() {
    String name = edtName.text.trim();
    String number = edtNomor.text.trim();
    String date = _dueDate.toString();
    Color color = _currentColor;

    if (name.isNotEmpty &&
        number.isNotEmpty &&
        date.isNotEmpty &&
        color.toString().isNotEmpty && fileText!.isNotEmpty) {
      setState(
        () {
          contacts.add(ModelDataAdvance(
              name: name, contact: number, date: date, color: color));
        },
      );
    }

    /// Print ke Debug Console
    DMethod.printBasic('Name: $name');
    DMethod.printBasic('number: $number');
    DMethod.printBasic('date: $date');
    DMethod.printBasic('color: $_currentColor');
    DMethod.printBasic('File: $fileText');
  }

  /// Ubah
  changeContact(int index) {
    showDialog(
      context: context,
      builder: (context) {
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
                          setState(
                            () {
                              contacts[selectedIndex].name = name;
                              contacts[selectedIndex].contact = number;
                              selectedIndex = -1;
                              Navigator.pop(context);
                            },
                          );
                        }
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
  }

  /// Hapus
  deleteContact(index) {
    setState(() {
      contacts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),

            header(),

            formGroup(),

            const SizedBox(
              height: 30,
            ),

            listContact(),

            /// Kondisi apabila kontak kosong
            contacts.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'No Contact',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.red,
                      ),
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: contacts.length,
                    itemBuilder: (context, index) => getRowList(index),
                  ),
          ],
        ),
      ),
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
