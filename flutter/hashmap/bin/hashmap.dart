import 'package:hashmap/hashmap.dart' as hashmap;

void main(List<String> arguments) {
  Map<int, String> family = hashmap.familyList();
  family.forEach((key, value) {
    print('$key - $value');
  });
}
