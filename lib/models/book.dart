
import 'package:trial_flutter_web_app/models/pages.dart';

class Book{
  int? id;
  String? title;
  int? numOfPages;
  String? translator;
  String? authorName;
  String? imagePath;
  int? publicationYear;
  String? publisher;
  int? authoringYear;
  String? authorOrigin;
  int? imageID;
  List<BookPage>? pages;
  // Uint8List? imageData;

  Book({
this.id,
required this.title,
this.numOfPages,
this.authorName,
this.translator,
required this.imagePath,
this.publicationYear,
this.publisher,
this.authoringYear,
this.authorOrigin,
this.imageID,
this.pages
// this.imageData
  });

     factory Book.fromSearchResultJson(Map<String, dynamic> json) => Book(
     title: json["title"].toString() == 'nan'? null: json["title"].toString(),
     imagePath: json["imagePath"].toString() == 'nan'? null: json["imagePath"].toString(),
     numOfPages: json['numOfPages'].toString() == 'nan'? null: int.parse(json['numOfPages'].toString()),
     authorName: json['authorName'].toString() == 'nan'? null: json['authorName'].toString(),
     translator: json['translator'].toString() == 'nan'? null: json['translator'].toString(),
     publicationYear: json['publicationYear'].toString() == 'nan'? null: int.parse(json['publicationYear'].toString()),
     publisher: json['publisher'].toString() == 'nan'? null: json['publisher'].toString(),
     authoringYear: json['authoringYear'].toString() == 'nan'? null: double.parse(json['authoringYear'].toString()).toInt(),
     authorOrigin: json['authorOrigin'].toString() == 'nan'? null: json['authorOrigin'].toString(),
     imageID: json['imageID'].toString() == 'nan'? null: int.parse(json['imageID'].toString()),
    pages: (json['pages'] as List<dynamic>).isEmpty? null:  (json['pages'] as List<dynamic>).map((item){
      return BookPage.fromJson((item as Map<String, dynamic>));
    }).toList()

  
   );

}