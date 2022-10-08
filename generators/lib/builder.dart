import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/data_class_generator.dart';

Builder generateDataClass(BuilderOptions options) {
  return SharedPartBuilder([DataClassGenerator()], "data_class_generator");
}
