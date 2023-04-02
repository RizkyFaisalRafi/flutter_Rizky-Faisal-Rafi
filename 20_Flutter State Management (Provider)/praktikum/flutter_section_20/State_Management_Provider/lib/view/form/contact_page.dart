import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/controller/contact_page_provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContactPageProvider>(
      create: (context) => ContactPageProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
        ),
        body: SingleChildScrollView(
          child: Consumer<ContactPageProvider>(
            builder: (context, value, child) => Column(
              children: [
                header(),
                formGroup(context),
                listContact(),
                value.contacts.isEmpty
                    ? const Padding(
                        padding: EdgeInsets.all(12),
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
                        itemCount: value.contacts.length,
                        itemBuilder: (context, index) => getRowList(index),
                      ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
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
    var formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            /// Form Name
            Consumer<ContactPageProvider>(
              builder: (context, valueprov, _) => TextFormField(
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
            ),
            const SizedBox(
              height: 16,
            ),

            /// Form Number Telephone
            Consumer<ContactPageProvider>(
              builder: (context, valueprov, _) => TextFormField(
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
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Consumer<ContactPageProvider>(
                  builder: (context, valueprov, _) => ElevatedButton(
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
                        valueprov.addContact();
                        debugPrint(valueprov.edtName.text);
                        debugPrint(valueprov.edtNomor.text);
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
            ),

            const SizedBox(
              height: 30,
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
    return Consumer<ContactPageProvider>(
      builder: (context, value, _) => ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.purple[100],
          child: Text(
            value.contacts[index].name[0],
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        title: Text(value.contacts[index].name),
        subtitle: Text(value.contacts[index].contact),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                value.deleteContact(index);
              },
              icon: const Icon(Icons.delete),
            ),
            IconButton(
              onPressed: () {
                value.changeContact(index, context);
              },
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
