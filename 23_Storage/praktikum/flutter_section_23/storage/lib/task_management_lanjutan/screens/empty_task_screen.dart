import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyTaskScreen extends StatelessWidget {
  const EmptyTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amber,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.not_interested_rounded, size: 100),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Empty',
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
