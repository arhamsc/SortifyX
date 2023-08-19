import 'package:uuid/uuid.dart';

String _generateNamespaceUUID() {
  const uuid = Uuid();
  final id = uuid.v4(); // Generate a new UUID v4 for the namespace
  return id;
}

String generateFamilyCode(String? prefix) {
  const uuid = Uuid();
  final namespace = _generateNamespaceUUID(); // Example namespace
  final name = prefix ?? ''; // Use an empty string if the prefix is null
  final id = uuid.v5(
    namespace,
    name,
  ); // Generate a new UUID v5 using the namespace and name
  final code = id
      .replaceAll('-', '')
      .substring(0, 6)
      .toUpperCase(); // Convert the UUID to a 6-character code
  return code;
}
