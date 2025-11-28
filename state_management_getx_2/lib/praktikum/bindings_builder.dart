import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;

  updateName(String val) => name.value = val;
  updateEmail(String val) => email.value = val;

  bool validate() => name.isNotEmpty && email.isNotEmpty;
}

class FormBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FormController());
  }
}

class BindingsPage extends StatelessWidget {
  const BindingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FormController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Bindings Builder")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: controller.updateName,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              onChanged: controller.updateEmail,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (controller.validate()) {
                  Get.snackbar("Success", "Form lengkap");
                } else {
                  Get.snackbar("Error", "Form belum lengkap");
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
