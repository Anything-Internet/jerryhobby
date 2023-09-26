import 'package:flutter/services.dart';

import '../util.dart';

class Documents {
  List documentAssetList = [];
  List<Document> document = [];

  Documents() {
    loadDocuments();
  }

  getDocuments(category) {
    List<Document> documents = [];
    document.forEach((element) {
      if (element.category == category) {
        documents.add(element);
      }
    });
    return documents;
  }

  getCategories() {
    List<String> categories = [];
    document.forEach((element) {
      if (!categories.contains(element.category)) {
        categories.add(element.category!);
      }
    });
    return categories;
  }

  loadDocuments() async {
    final assetManifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    // This returns a List<String> with all your images
    documentAssetList = await assetManifest
        .listAssets()
        .where((string) => string.startsWith("assets/content/documents"))
        .toList();
    documentAssetList.forEach((element) {
      document.add(Document(assetFile: element));
    });
    document.sort((a, b) => b.date!.compareTo(a.date!));
  }
}

class Document {
  String? title;
  String? subTitle;
  String? category;
  String? content;
  String? assetFile;
  DateTime? date;

  Document({this.assetFile}) {
    assetFile = assetFile!.substring(kContentAssetPath.length + 1);
    String fileName;

    category = assetFile!.split("/")[1].split(".")[0];
    fileName = assetFile!.split("/")[2].split(".")[0];

    date = DateTime.parse(fileName.substring(0, 10));
    title = toTitleCase(fileName.substring(11));

    category = toTitleCase(category!);

    content = "loading...";
    loadAssetMarkdownContent(assetFile!).then((value) {
      content = value;
    });
  }

  String toTitleCase(String s) {
    return s.replaceAll(RegExp('_'), ' ').split(" ").map((str) {
      return str[0].toUpperCase() + str.substring(1);
    }).join(" ");
  }
}
