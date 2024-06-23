
import 'package:hive/hive.dart';

part 'AddDoctorModel.g.dart';


@HiveType(typeId: 0)
class AddDoctorModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String location;
  @HiveField(3)
  final int phone ;

  AddDoctorModel({required this.name, required this.phone, required this.location, required this.email});


}
