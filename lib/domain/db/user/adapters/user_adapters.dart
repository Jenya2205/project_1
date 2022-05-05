import 'package:hive_flutter/hive_flutter.dart';
import 'package:rumbella/domain/db/user/model/user_model.dart';

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    return User(
        email: reader.readString(),
        password: reader.readString(),
        name: reader.read(),
        surname: reader.read(),
        number: reader.read(),
        avatar: reader.read());
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.writeString(obj.email);
    writer.writeString(obj.password);
    writer.write(obj.name);
    writer.write(obj.surname);
    writer.write(obj.number);
    writer.write(obj.avatar);
  }
}
