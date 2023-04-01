import 'package:flutter/material.dart';

import '../../animation/animations.dart';
import '../../model/data_model.dart';
import 'detail_page.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets Tempat Wisata'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[800],
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          final DataModel data = dataModelList[index];
          return InkWell(
            onTap: () {
              // kode untuk menampilkan bottomsheet saat gambar ditekan
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: SizedBox(
                      height: 300,
                      child: Image.network(
                        data.imageUrls,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );

              showGeneralDialog(
                context: context,
                barrierLabel: '',
                transitionDuration: const Duration(milliseconds: 600),
                barrierDismissible: true,
                transitionBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return Animations.fromBottom(
                      animation, secondaryAnimation, child);
                },
                pageBuilder: (animation, secondaryAnimation, child) {
                  return AlertDialog(
                    title: Text(data.name),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              data.imageUrls,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text('Anda Ingin Lihat Detail?')
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Tidak',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: const Text(
                          'Ya',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onPressed: () {
                          // kode untuk masuk ke halaman baru detail
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailPage(data: data);
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    data.imageUrls,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: dataModelList.length,
      ),
    );
  }
}
