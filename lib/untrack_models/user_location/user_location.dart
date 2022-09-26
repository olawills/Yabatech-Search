import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

// class UserLocation extends StatefulWidget {
//   const UserLocation({Key? key}) : super(key: key);

//   @override
//   State<UserLocation> createState() => _UserLocationState();
// }

// class _UserLocationState extends State<UserLocation> {
//   final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
//   Position? _currentPosition;
//   String? _currentAddress;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   _getCurrentLocation() {
//     geolocator
//         .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
//         .then((Position position) {
//       setState(() {
//         _currentPosition = position;
//       });

//       _getAddressFromLatLng();
//     }).catchError((e) {
//       print(e);
//     });
//   }

//   _getAddressFromLatLng() async {
//     try {
//       List<Placemark> p = await geolocator.placemarkFromCoordinates(
//           _currentPosition!.latitude, _currentPosition!.longitude);

//       Placemark place = p[0];

//       setState(() {
//         _currentAddress =
//             "${place.locality}, ${place.postalCode}, ${place.country}";
//       });
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Text(
//           'Location',
//           // style: Theme.of(context).textTheme.caption,
//         ),
//         if (_currentPosition != null && _currentAddress != null)
//           Text(
//             _currentAddress.toString(),
//             style: Theme.of(context).textTheme.bodyText2,
//           ),
//       ],
//     );
//   }
// }

//   // final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  // Position? _currentPosition;
  // String? _currentAddress;

  // @override
  // void initState() {
  //   super.initState();
  //   _getCurrentLocation();
  // }

  // _getCurrentLocation() {
  //   geolocator
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
  //       .then((Position position) {
  //     setState(() {
  //       _currentPosition = position;
  //     });

  //     _getAddressFromLatLng();
  //   }).catchError((e) {
  //     print(e);
  //   });
  // }

  // _getAddressFromLatLng() async {
  //   try {
  //     List<Placemark> p = await geolocator.placemarkFromCoordinates(
  //         _currentPosition!.latitude, _currentPosition!.longitude);

  //     Placemark place = p[0];

  //     setState(() {
  //       _currentAddress =
  //           "${place.locality}, ${place.postalCode}, ${place.country}";
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }