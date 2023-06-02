import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hospital/signature_controller.dart';
// import 'package:signature_pad/signature_pad.dart';

class CustomSignatureWidget extends StatelessWidget {
  final SignatureController _controller = Get.put(SignatureController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter your signature',
            border: OutlineInputBorder(),
          ),
          readOnly: true,
          controller: TextEditingController(
            text: '',
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Signature Pad'),
                  content: Container(
                    height: 300,
                    child: SignaturePad(
                      controller: _controller.signatureController,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        _controller.clear();
                      },
                      child: Text('Clear'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Done'),
                    ),
                  ],
                );
              },
            ).then((value) {
              if (_controller.signatureController.isClosed) {
                Get.snackbar(
                  'Signature',
                  'Signature captured successfully!',
                  duration: Duration(seconds: 2),
                );
              }
            });
          },
        ),
      ],
    );
  }

  SignaturePad({required SignatureController controller}) {}
}