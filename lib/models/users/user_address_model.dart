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
}
