import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key, required this.title});

  final String title;

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  var inputController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 28,
            ),
            Image.asset(
              'assets/icon_contact.png',
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Create New Contacts',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28)),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 24),
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
            Form(
                key: formKey,
                child: Column(
                  children: [
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //
                    //     labelText: 'Name',
                    //     hintText: 'Insert Your Name',
                    //     floatingLabelBehavior: FloatingLabelBehavior.always, // Agar tetap tampil hintTextnya
                    //     labelStyle: TextStyle(
                    //       color: Colors.grey,
                    //     ),
                    //     hintStyle: TextStyle(color: Colors.grey),
                    //     enabledBorder: UnderlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.grey),
                    //     ),
                    //     focusedBorder: UnderlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.grey),
                    //     ),
                    //   ),
                    //   style: TextStyle(color: Colors.black),
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return 'Please enter your name';
                    //     }
                    //     return null;
                    //   },
                    //
                    // ),

                    TextField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        // Agar tetap tampil hintTextnya
                        labelText: 'Name',
                        hintText: 'Insert Your Name',
                      ),
                      /// digunakan untuk menghubungkan input field
                      /// dengan sebuah controller yang bertanggung jawab untuk mengatur nilai dari input field tersebut.
                      controller: inputController,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        // Agar tetap tampil hintTextnya
                        labelText: 'Nomor',
                        hintText: '+62',
                      ),
                      /// digunakan untuk menghubungkan input field
                      /// dengan sebuah controller yang bertanggung jawab untuk mengatur nilai dari input field tersebut.
                      controller: inputController,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 0), // set minimum width to 200 pixels
                              padding: EdgeInsets.all(16),
                              backgroundColor: Color(0xff6650A4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),

                            onPressed: () {
                            },
                            child: Text('Submit'),

                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  /// Dispose untuk menghapus widget Controller ketika sudah tidak digunakan
  /// untuk mencegah kebocoran memory / memory leak
  @override
  void dispose() {
    inputController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
