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
      discount: fields[0] as int,
      price: fields[2] as double,
      rating: fields[3] as double,
      title: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteProducts obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.discount)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
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
