import 'package:equatable/equatable.dart';

class CovidCases extends Equatable {
  final String countryRegion;
  final int lastUpdate;
  final double lat;
  final double long;
  final int confirmed;
  final int deaths;
  final int active;
  final String combinedKey;
  final double incidentRate;
  final int uid;
  final String iso3;
  final int cases28Days;
  final int deaths28Days;

  const CovidCases({
    required this.countryRegion,
    required this.lastUpdate,
    required this.lat,
    required this.long,
    required this.confirmed,
    required this.deaths,
    required this.active,
    required this.combinedKey,
    required this.incidentRate,
    required this.uid,
    required this.iso3,
    required this.cases28Days,
    required this.deaths28Days,
  });

  @override
  List<Object> get props {
    return [
      countryRegion,
      lastUpdate,
      lat,
      long,
      confirmed,
      deaths,
      active,
      combinedKey,
      incidentRate,
      uid,
      iso3,
      cases28Days,
      deaths28Days,
    ];
  }
}
