import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';

class CompilerPage extends StatelessWidget {
  // String _code='''
  //   class HelloWorld {
  //     public static void main(String[] args) {
  //       System.out.println("Hello, World!");}}''';
  
 @override
  Widget build(BuildContext context) {
    List<String> contentOfPage1 = [
    ];
  double height = MediaQuery.of(context).size.height;
    List<FileEditor> files = [
      new FileEditor(
        name: "page1.java",
        language: "java",
        // code: _code,
      ),
      new FileEditor(
        name: "page2.java",
        language: "java",
        // code: _code
        ),
      new FileEditor(
        name: "style.java",
        language: "java",
        // code: _code,
      ),
    ];
    EditorModel model = new EditorModel(
      files: files, 
      styleOptions: new EditorModelStyleOptions(
        editorColor: Colors.transparent,
        heightOfContainer: height*0.65,
        fontSize: 13,
      ),
    );
    
    return Scaffold(
            body:SizedBox.expand(child:
            CodeEditor(
                model: model, // the model created above, not required since 1.0.0
                edit: true,
                disableNavigationbar: false,
                onSubmit: (String language, String value) {},
              
    ),)
            );
  }
}