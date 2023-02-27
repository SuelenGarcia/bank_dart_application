// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserAddressModel {
  String address;
  String addressNumber;
  String neighborhood;
  String city;
  String state;
  String cep;
  String? complementAddress;

  UserAddressModel({
    required this.address,
    required this.addressNumber,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.cep,
    this.complementAddress,
  });

  @override
  String toString() {
    return 'UserAddressModel(address: $address, addressNumber: $addressNumber, neighborhood: $neighborhood, city: $city, state: $state, cep: $cep, complementAddress: $complementAddress)';
  }
}
