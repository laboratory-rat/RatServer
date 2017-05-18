import 'package:ratserver/ratserver.dart';

@DataTable("")
class BaseEntity
{
    String id;
    DateTime createdAt;

    BaseEntity(this.id, this.createdAt);
    BaseEntity.create([this.id])
    {
        createdAt = new DateTime.now();
    }
}