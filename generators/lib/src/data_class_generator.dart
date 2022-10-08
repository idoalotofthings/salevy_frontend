import 'package:build/src/builder/build_step.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';

import 'package:annotations/annotations.dart';
import 'model_visitor.dart';

class DataClassGenerator extends GeneratorForAnnotation<DataClass> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    final className = visitor.className.replaceFirst("_Abs", '');

    final classBuffer = StringBuffer();

    classBuffer.writeln("class $className {\n");

    for (var i in visitor.fields.keys) {
      classBuffer.writeln("final ${visitor.fields[i]} $i;");
    }

    classBuffer.writeln("\nconst $className({");

    for (var i in visitor.fields.keys) {
      classBuffer.write("required this.$i,");
    }

    classBuffer.write("});\n");

    classBuffer.writeln("\n@override");
    classBuffer.writeln("String toString() {");
    classBuffer.write("return '$className ");

    var counter = 0;
    for (var i in visitor.fields.keys) {
      if (counter < visitor.fields.keys.length - 1) {
        classBuffer.write("$i = \$$i, ");
      } else {
        classBuffer.write("$i = \$$i';");
        classBuffer.writeln("}");
      }

      counter++;
    }

    classBuffer.writeln("\n");

    classBuffer.writeln("bool equals($className ${className.toLowerCase()}) {");
    classBuffer.write("if(");

    var equalsCounter = 0;
    for (var i in visitor.fields.keys) {
      if (equalsCounter < visitor.fields.keys.length - 1) {
        classBuffer.write("$i == ${className.toLowerCase()}.$i &&\n ");
      } else {
        classBuffer.write("$i == ${className.toLowerCase()}.$i) {\n");
        classBuffer.writeln("return true;");
        classBuffer.writeln("} else {");
        classBuffer.writeln("return false;\n}");
        classBuffer.writeln("}");
      }

      equalsCounter++;
    }

    classBuffer.writeln("\n");

    classBuffer.writeln("$className copy({");

    var copyCounter = 0;
    for (var i in visitor.fields.keys) {
      if (copyCounter < visitor.fields.keys.length - 1) {
        classBuffer.write("${visitor.fields[i]}? $i,");
      } else {
        classBuffer.write("${visitor.fields[i]}? $i}) {");
      }
      copyCounter++;
    }

    classBuffer.write("return $className(");

    var copyReturnCounter = 0;
    for (var i in visitor.fields.keys) {
      if (copyReturnCounter < visitor.fields.keys.length - 1) {
        classBuffer.write("$i: $i ?? this.$i, ");
      } else {
        classBuffer.write("$i: $i ?? this.$i);\n}");
      }
      copyReturnCounter++;
    }

    classBuffer.writeln("}");

    return classBuffer.toString();
  }
}
