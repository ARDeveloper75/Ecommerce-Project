// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favoriteProducts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteProductsAdapter extends TypeAdapter<FavoriteProducts> {
  @override
  final int typeId = 1;

  @override
  FavoriteProducts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteProducts(
      id: fields[0] as String,
      discount: fields[1] as int,
      price: fields[3] as double,
      rating: fields[4] as double,
      title: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteProducts obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.discount)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.rating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteProductsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
