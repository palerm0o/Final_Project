// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddDoctorModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddDoctorModelAdapter extends TypeAdapter<AddDoctorModel> {
  @override
  final int typeId = 0;

  @override
  AddDoctorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddDoctorModel(
      name: fields[0] as String,
      email: fields[1] as String,
      location: fields[2] as String,
      phone: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AddDoctorModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.location)
      ..writeByte(3)
      ..write(obj.phone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AddDoctorModelAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
