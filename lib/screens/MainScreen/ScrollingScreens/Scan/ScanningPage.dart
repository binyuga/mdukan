import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScanningPage extends StatefulWidget {
  @override
  _ScanningPageState createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  String barcode = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Scanned Barcode Number",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              barcode,
              style: TextStyle(fontSize: 25, color: Colors.green),
            ),
            FloatingActionButton(
              onPressed: () {
                // barcodeReader();
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // barcodeReader();
  }

  // Future barcodeReader() async {
  //   try {
  //     ScanResult barcode = await BarcodeScanner.scan();
  //     setState(() => this.barcode = barcode.toString());
  //   } on PlatformException catch (e) {
  //     if (e.code == BarcodeScanner.cameraAccessDenied) {
  //       setState(() {
  //         this.barcode = 'No camera permission!';
  //       });
  //     } else {
  //       setState(() => this.barcode = 'Unknown error: $e');
  //     }
  //   } on FormatException {
  //     setState(() => this.barcode = 'Nothing captured.');
  //   } catch (e) {
  //     setState(() => this.barcode = 'Unknown error: $e');
  //   }
  // }
}
