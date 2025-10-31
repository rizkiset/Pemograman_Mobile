import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pilih Provinsi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          DropdownSearch<String>(
            items: ["Jawa Timur", "Jawa Tengah", "Jawa Barat", "DKI Jakarta", "Bali"],
            popupProps: PopupProps.menu(showSearchBox: true),
            onChanged: print,
            selectedItem: "Jawa Timur",
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
