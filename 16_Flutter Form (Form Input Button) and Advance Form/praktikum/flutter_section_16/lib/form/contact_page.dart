import 'package:flutter/material.dart';
import 'package:flutter_section_16/model/model_data.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key, required this.title});

  final String title;

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final edtName = TextEditingController();
  final edtNomor = TextEditingController();

  List<ModelData> contacts = List.empty(growable: true);
  var formKey = GlobalKey<FormState>();
  final list = [];

  int selectedIndex = -1;

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

  Widget formGroup() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            /// Form Name
            TextFormField(
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

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Processing',
                          ),
                          duration: Duration(seconds: 1),
                        ),
                      );
                      addContact();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(90, 40),
                    backgroundColor: const Color(0xff6650A4),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Submit'),
                ),
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
        backgroundColor: Colors.purple[100],
        child: Text(
          contacts[index].name[0],
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
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
              setState(() {
                selectedIndex = index;
              });
            },
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              deleteContact(index);
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

  /// Tambah
  addContact() {
    String name = edtName.text.trim();
    String number = edtNomor.text.trim();

    if (name.isNotEmpty && number.isNotEmpty) {
      setState(
            () {
          contacts.add(
            ModelData(name: name, contact: number),
          );
        },
      );
    }
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
            Form(
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
                    ElevatedButton(
                      onPressed: () {
                        String name = edtName.text.trim();
                        String number = edtNomor.text.trim();

                        if (name.isNotEmpty && number.isNotEmpty) {
                          setState(
                                () {
                              edtName.text = '';
                              edtNomor.text = '';
                              contacts[selectedIndex].name = name;
                              contacts[selectedIndex].contact = number;
                              selectedIndex = -1;
                              Navigator.pop(context);
                            },
                          );
                        }
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
