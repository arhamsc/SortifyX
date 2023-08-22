// ignore_for_file: public_member_api_docs, sort_constructors_first
class RouteType {
  final String name;
  final String path;
  RouteType({
    required this.name,
    required this.path,
  });
}

class RouteDetails {
  static final authPage = RouteType(name: "auth", path: "/auth");
  static final authFamilyIntroPage =
      RouteType(name: "family_intro", path: "/auth/family");

  static final authSignUpFamilyPage =
      RouteType(name: "family_sign_up", path: "/auth/family/signUp");


  static final documentsHomePage =
      RouteType(name: "documents_home", path: "/documents");

  static final documentsUploadPage =
      RouteType(name: "document_upload", path: "/documents/upload");
  static final documentsDetailPage =
      RouteType(name: "document_details", path: "/documents/:documentId");

  //TODO:: Moving forward add notes, password manager routes also
}
