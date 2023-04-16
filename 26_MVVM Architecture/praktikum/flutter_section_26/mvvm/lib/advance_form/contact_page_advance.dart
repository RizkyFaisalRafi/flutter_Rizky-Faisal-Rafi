import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'contact_page_advance_provider.dart';

class ContactPageAdvance extends StatelessWidget {
  const ContactPageAdvance({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContactPageAdvanceProvider>(
      create: (context) => ContactPageAdvanceProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Interactive Widgets'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              header(),
              formGroup(context),
              listContact(),

              /// Kondisi apabila kontak kosong
              Consumer<ContactPageAdvanceProvider>(
                builder: (context, valueprov, child) =>
                    valueprov.contacts.isEmpty
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
                            itemCount: valueprov.contacts.length,
                            itemBuilder: (context, index) => getRowList(index),
                          ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
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

  Widget formGroup(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Consumer<ContactPageAdvanceProvider>(
        builder: (context, valueprov, child) => Form(
          key: valueprov.formKey,
          child: Column(
            children: [
              /// Form Name
              TextFormField(
                maxLength: 25,
                validator: (value) => valueprov.validateName(value),
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  fillColor: Color(0xffE7E0EC),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Name',
                  hintText: 'Insert Your Name',
                ),
                controller: valueprov.edtName,
              ),
              const SizedBox(
                height: 16,
              ),

              /// Form Number Telephone
              TextFormField(
                validator: (value) => valueprov.validatePhone(value),
                maxLength: 15,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color(0xffE7E0EC),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Nomor',
                  hintText: '+62',
                ),
                controller: valueprov.edtNomor,
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
                child: Consumer<ContactPageAdvanceProvider>(
                  builder: (context, valueprov, child) => ElevatedButton(
                    onPressed: () {
                      valueprov.addContact(context);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(90, 40),
                      backgroundColor: valueprov.currentColor,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Submit'),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
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
    return Consumer<ContactPageAdvanceProvider>(
      builder: (context, valueprov, _) => ListTile(
        leading: CircleAvatar(
          backgroundColor: valueprov.contacts[index].color,
          child: Text(
            valueprov.contacts[index].name[0],
            style: const TextStyle(color: Colors.black),
          ),
        ),
        title: Text(valueprov.contacts[index].name),
        subtitle: Text(valueprov.contacts[index].contact),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                valueprov.changeContact(context, index);
                valueprov.edtName.text = valueprov.contacts[index].name;
                valueprov.edtNomor.text = valueprov.contacts[index].contact;
              },
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {
                valueprov.deleteContact(index);
              },
              icon: const Icon(Icons.delete),
            ),
            IconButton(
              onPressed: () {
                valueprov.informaton(context);
              },
              icon: const Icon(Icons.info),
            ),
          ],
        ),
      ),
    );
  }

  /// DatePicker
  Widget buildDatePicker(BuildContext context) {
    return Consumer<ContactPageAdvanceProvider>(
      builder: (context, valueprov, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Date'),
              TextButton(
                onPressed: () async {
                  valueprov.datePicker(context);
                },
                child: const Text('Select'),
              ),
            ],
          ),
          Text(
            DateFormat('dd-MM-yyyy').format(valueprov.dueDate),
          ),
        ],
      ),
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
        Consumer<ContactPageAdvanceProvider>(
          builder: (context, valueprov, child) => Container(
            height: 100,
            width: double.infinity,
            color: valueprov.currentColor,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Consumer<ContactPageAdvanceProvider>(
          builder: (context, valueprov, child) => Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(valueprov.currentColor),
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
                          pickerColor: valueprov.currentColor,
                          onColorChanged: (color) {
                            valueprov.currentColor = color;
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
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }

  /// FilePicker
  Widget buildFilePicker() {
    return Consumer<ContactPageAdvanceProvider>(
      builder: (context, valueprov, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Pick Files'),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                valueprov.pickFile(context);
                // _pickFile();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(valueprov.currentColor),
              ),
              child: const Text('Pick and Open File'),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(valueprov.fileText.toString()),
        ],
      ),
    );
  }
}
