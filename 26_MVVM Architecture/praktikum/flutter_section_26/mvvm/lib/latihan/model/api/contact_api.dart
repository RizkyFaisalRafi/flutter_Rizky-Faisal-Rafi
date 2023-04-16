import 'package:dio/dio.dart';
import 'package:mvvm/latihan/model/contact_model.dart';

class ContactApi {
  // getContacts digunakan untuk mengambil data dari server
  // dengan metode REST API
  // dan mengubah data tersebut kedalam bentuk class Contact
  static Future<List<ContactModel>> getContacts() async {
    final response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts");

    List<ContactModel> contacts = (response.data as List)
        .map((e) => ContactModel(id: e['id'], name: e['name'], phone: e['phone']))
        .toList();

    return contacts;
  }
}
