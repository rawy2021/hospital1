import 'package:get/get.dart';

class SignatureController extends GetxController {
  final SignatureController signatureController = SignatureController(
    // exportBackgroundColor: Colors.reactive,
    
  )

  SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  void clear() {
    signatureController.clear();
    update();
  }
}
