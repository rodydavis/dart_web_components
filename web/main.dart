import 'dart:html';

class CustomDartComponent extends HtmlElement {
  CustomDartComponent.created() : super.created();
  factory CustomDartComponent() {
    final _element = Element.tag('custom-dart-component');
    _element.text = "test element";
    return _element;
  }
}

void main() {
  var header = querySelector('#header');
  header.text = "Hello, World!";
  window.customElements.define('custom-dart-component', CustomDartComponent);
}
