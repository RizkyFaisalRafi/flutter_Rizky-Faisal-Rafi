// Menulis Test Script
// Import package test
// Membuat Test Case
// Menjalankan fungsi
// Cek hasil dengan expect

import 'package:finitestateunittest/latihan/model/api/contact_api.dart';
import 'package:finitestateunittest/latihan/model/contact_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'contact_api_test.mocks.dart';

/// Test Biasa
// void main() {
//   test('get all contacts return data', () async {
//     var contacts = await ContactApi.getContacts();
//     expect(contacts.isNotEmpty, true);
//   });
// }

/// Test dengan mengelompokan Test/Group
// void main() {
//   group('ContactAPI', () {
//     test('get all contacts return data', () async {
//       var contacts = await ContactApi.getContacts();
//       expect(contacts.isNotEmpty, true);
//     });
//   });
// }

/// Test dengan mengelompokan Test/Group dengan mocking
@GenerateMocks([ContactApi])
void main() {
  group('ContactAPI', () {
    // Object dibuat bentuk tiruan
    ContactApi contactApi = MockContactApi();

    test('get all contacts return data', () async {
      when(contactApi.getContacts()).thenAnswer(
        (_) async => <ContactModel>[
          // bentuk tiruan memiliki input dan output yang sama dengan asli
          ContactModel(id: 1, name: 'a', phone: '0'),
        ],
      );
      var contacts = await contactApi.getContacts();
      expect(contacts.isNotEmpty, true);
    });
  });
}
