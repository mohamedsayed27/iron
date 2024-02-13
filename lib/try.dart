import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TryNFCDetector extends StatefulWidget {
  const TryNFCDetector({super.key});

  @override
  State<TryNFCDetector> createState() => _TryNFCDetectorState();
}

class _TryNFCDetectorState extends State<TryNFCDetector> {
  static const platform = MethodChannel('mohamed.sayed.com/detectNFCSupport');

  Future<void> checkNfcSupport() async {
    print(platform.name);
    bool isSupported;
    try {
      isSupported = await platform.invokeMethod('isNfcSupported');
    } on PlatformException catch (e) {
      print("Error checking NFC support: $e");
      isSupported = false;
    }

    if (isSupported) {
      print("The device supports NFC.");
    } else {
      print(await platform.invokeMethod('isNfcSupported'));
      print("The device does not support NFC.");
    }
  }
  @override
  void initState() {
    checkNfcSupport();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.ac_unit,size: 32.r,),
      ),
    );
  }
}
