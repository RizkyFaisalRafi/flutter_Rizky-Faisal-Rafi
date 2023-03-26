import 'package:flutter/material.dart';
import 'package:weekly_satu/model_form.dart';

var formKey = GlobalKey<FormState>();

class WeeklySatu extends StatefulWidget {
  const WeeklySatu({Key? key}) : super(key: key);

  @override
  State<WeeklySatu> createState() => _WeeklySatuState();
}

class _WeeklySatuState extends State<WeeklySatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weekly Satu'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // welcome section
            welcomeSection(),
            contactUsSection(context),

            // contact us section
          ],
        ),
      ),
    );
  }

  List<ModelForm> data = List.empty(growable: true);

  Widget contactUsSection(BuildContext context) {
    final edtName = TextEditingController();
    final edtEmail = TextEditingController();
    final edtMessage = TextEditingController();

    void addData() {
      String name = edtName.text.trim();
      String email = edtEmail.text.trim();
      String message = edtMessage.text.trim();

      if (name.isNotEmpty && email.isNotEmpty && message.isNotEmpty) {
        setState(() {
          data.add(ModelForm(name: name, email: email, message: message));
        });
      }
    }

    return Container(
      padding: const EdgeInsets.all(16),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      Icons.scatter_plot_outlined,
                      size: 40,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 20,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 40,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 40,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 40,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 60,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 60,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 60,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: Colors.purple[100],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        "Need to get in touch with us?\nEither fill and out the form with\nyour inquiry or find the department\nyou'd like to connect below.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            TextFormField(
              maxLength: 25,
              // validator: (value) => validateName(value),
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
            const SizedBox(height: 16),
            TextFormField(
              maxLength: 25,
              // validator: (value) => validateName(value),
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                fillColor: Color(0xffE7E0EC),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Email',
                hintText: 'Insert Your Email',
              ),
              controller: edtEmail,
            ),
            const SizedBox(height: 16),
            //
            TextFormField(
              maxLength: 1000,
              // validator: (value) => validateName(value),
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                fillColor: Color(0xffE7E0EC),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Message',
                hintText: 'What can we help you with?',
                alignLabelWithHint: true,
                // to center the hint text
                isDense: true,
              ),
              maxLines: 4,
              controller: edtMessage,
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 40),
                // backgroundColor: contacts[index].color,
                shape: const StadiumBorder(),
              ),
              child: const Text('Submit'),
              onPressed: () {
                // if (formKey.currentState!.validate()) {
                  addData();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Data Submitted'),
                        content: Text('Name: \nEmail: ...\nMessage: ...'),
                        actions: [
                          TextButton(
                            child: const Text('OK',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );

              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget welcomeSection() {
  return Container(
    height: 350,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: Colors.blue),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Welcome, Rizky Faisal Rafi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.waving_hand,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Silahkan isi Form dibawah untuk\nmenghubungi kami',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.contact_phone,
                color: Colors.white,
              )
            ],
          ),
          Image.asset(
            'assets/two.png',
            width: 250,
            height: 250,
          )
        ],
      ),
    ),
  );
}
