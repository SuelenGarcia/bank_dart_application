class UserAddressModel {
  String address;
  int addressNumber;
  String neighborhood;
  String city;
  String state;
  int cep;
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
