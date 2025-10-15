// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/address_model.dart';
import 'package:fastfood/screen/profile/application/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(this._dio, this._hiveDataBase) : super(const ProfileState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  Future<void> openGmail(String email) async {
    final Uri gmailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: Uri.encodeFull('subject=Hello&body=Hi there,'),
    );

    if (!await launchUrl(gmailUri, mode: LaunchMode.externalApplication)) {
      throw 'Could not open Gmail';
    }
  }

  Future<void> openWebsite() async {
    final Uri url = Uri.parse('https://pub.dev');

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not open website';
    }
  }

  Future<void> getAllAddress() async {
    state = state.copyWith(isAddressLoading: true);
    final List<AddressModel> dummyAddresses = [];

    dummyAddresses.addAll([
      AddressModel(
        id: "1",
        name: "John Doe",
        number: "9876543210",
        alternativeNumber: "9123456780",
        address: "123 Main Street",
        city: "New York",
        state: "NY",
        pincode: "10001",
        landmark: "Near Central Park",
        isPrimary: true,
      ),

      AddressModel(
        id: "2",
        name: "Jane Smith",
        number: "8765432109",
        alternativeNumber: "9345678120",
        address: "45 Elm Avenue",
        city: "Los Angeles",
        state: "CA",
        pincode: "90001",
        landmark: "Opposite City Mall",
        isPrimary: false,
      ),

      AddressModel(
        id: "3",
        name: "Michael Johnson",
        number: "7654321098",
        alternativeNumber: "9456781230",
        address: "678 Pine Road",
        city: "Chicago",
        state: "IL",
        pincode: "60601",
        landmark: "Near Riverwalk",
        isPrimary: false,
      ),

      AddressModel(
        id: "4",
        name: "Emily Davis",
        number: "6543210987",
        alternativeNumber: "9567812340",
        address: "22 Oak Street",
        city: "Houston",
        state: "TX",
        pincode: "77001",
        landmark: "Beside City Library",
        isPrimary: false,
      ),

      AddressModel(
        id: "5",
        name: "William Brown",
        number: "5432109876",
        alternativeNumber: "9678123450",
        address: "89 Maple Drive",
        city: "Phoenix",
        state: "AZ",
        pincode: "85001",
        landmark: "Next to Grand Market",
        isPrimary: false,
      ),

      AddressModel(
        id: "6",
        name: "Olivia Wilson",
        number: "4321098765",
        alternativeNumber: "9781234560",
        address: "301 Cedar Lane",
        city: "Philadelphia",
        state: "PA",
        pincode: "19019",
        landmark: "Near Liberty Bell",
        isPrimary: false,
      ),

      AddressModel(
        id: "7",
        name: "James Miller",
        number: "3210987654",
        alternativeNumber: "9892345670",
        address: "15 Birch Blvd",
        city: "San Antonio",
        state: "TX",
        pincode: "78201",
        landmark: "Close to River Center",
        isPrimary: false,
      ),

      AddressModel(
        id: "8",
        name: "Sophia Martinez",
        number: "2109876543",
        alternativeNumber: "9012345678",
        address: "56 Palm Street",
        city: "San Diego",
        state: "CA",
        pincode: "92101",
        landmark: "Opposite City Hospital",
        isPrimary: false,
      ),

      AddressModel(
        id: "9",
        name: "David Anderson",
        number: "1098765432",
        alternativeNumber: "9123456709",
        address: "400 Willow Court",
        city: "Dallas",
        state: "TX",
        pincode: "75201",
        landmark: "Next to Tech Park",
        isPrimary: false,
      ),

      AddressModel(
        id: "10",
        name: "Isabella Thomas",
        number: "1987654321",
        alternativeNumber: "9234567810",
        address: "77 Lake View",
        city: "San Jose",
        state: "CA",
        pincode: "95101",
        landmark: "Beside Metro Station",
        isPrimary: false,
      ),
    ]);

    state = state.copyWith(
      isAddressLoading: false,
      addressList: dummyAddresses,
    );
  }

  void updateAddress({required String id}) {
    final List<AddressModel> updatedList = [];

    for (var address in state.addressList) {
      if (address.isPrimary) {
        address = address.copyWith(isPrimary: false);
      }

      if (address.id == id) {
        updatedList.add(address.copyWith(isPrimary: true));
      } else {
        updatedList.add(address.copyWith(isPrimary: false));
      }
    }

    state = state.copyWith(addressList: updatedList);
  }

  void deleteAddress({required String id}) {
    final List<AddressModel> updatedList = [...state.addressList];

    final itemId = updatedList.firstWhere((item) => item.id == id);
    updatedList.remove(itemId);

    state = state.copyWith(addressList: updatedList);
  }
}
