import 'package:analyzer/dart/element/visitor.dart';
import 'package:analyzer/dart/element/element.dart';

class ModelVisitor extends SimpleElementVisitor<void> {
  late String className;
  final fields = <String, dynamic>{};

  @override
  void visitConstructorElement(ConstructorElement element) {
    print("Eyo");
    final elementReturnType = element.type.returnType.toString();

    className = elementReturnType.replaceFirst("*", '');
  }

  @override
  void visitFieldElement(FieldElement element) {
    final elementType = element.type.toString();

    fields[element.name] = elementType.replaceFirst("*", '');
  }
}
