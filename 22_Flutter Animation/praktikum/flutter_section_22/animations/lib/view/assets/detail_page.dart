import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/data_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.data}) : super(key: key);
  final DataModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(
                  data.imageUrls,
                  fit: BoxFit.cover,
                  height: 300,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                children: [
                  Text(
                    data.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lobster(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    data.desc,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.roboto(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
