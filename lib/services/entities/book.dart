import 'package:isar/isar.dart';
import 'author.dart';
import 'book_category.dart';

//part 'book.g.dart';

@Collection()
class Book{
  Id id = Isar.autoIncrement;
  late String title;
  late String isbn;
  late String description;
  final bookCategory = IsarLink<BookCategory>();
  final author = IsarLinks<Author>();
}