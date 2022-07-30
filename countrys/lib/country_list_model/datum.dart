class CountrylistModel {
  int? networkId;
  String? countryName;
  String? network;
  int? countryId;
  String? flag;

  CountrylistModel({
    this.networkId,
    this.countryName,
    this.network,
    this.countryId,
    this.flag,
  });

  factory CountrylistModel.fromJson(Map<String, dynamic> json) =>
      CountrylistModel(
        networkId: json['network_id'] as int?,
        countryName: json['country_name'] as String?,
        network: json['network'] as String?,
        countryId: json['country_id'] as int?,
        flag: json['flag'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'network_id': networkId,
        'country_name': countryName,
        'network': network,
        'country_id': countryId,
        'flag': flag,
      };
}
