
import 'package:isar/isar.dart';
import 'package:ui_app/services/entities/book.dart';

//part 'book_category.g.dart';

@Collection()
class BookCategory{
  Id id = Isar.autoIncrement;
  late String title;
  final books = IsarLinks<Book>();
}