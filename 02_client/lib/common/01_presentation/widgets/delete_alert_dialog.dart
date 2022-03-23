import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DeleteAlertDialog extends HookWidget {
  final String title;
  final String content;
  final VoidCallback deleteCall;
  final bool withInput;
  final String textToMatch;

  const DeleteAlertDialog({
    Key key,
    @required this.title,
    @required this.content,
    @required this.deleteCall,
    @required this.textToMatch,
    this.withInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (withInput) {
      final textToMatchEditingController = useTextEditingController();
      return _buildWithInputToMatch(
        context,
        textToMatchEditingController,
      );
    } else {
      return _buildStandard(context);
    }
  }

  AlertDialog _buildWithInputToMatch(
      BuildContext context, TextEditingController controller) {
    final isInputMatchingText = useState(false);

    return AlertDialog(
      title: Container(
        alignment: Alignment.center,
        child: Text(title, style: TextStyle(color: Colors.black)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            content,
            style: TextStyle(color: Colors.black87),
          ),
          Text(
            'Type in',
            style: TextStyle(color: Colors.black87),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
            child: Text('$textToMatch',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ),
          Text('to delete it.', style: TextStyle(color: Colors.black87)),
          TextField(
            controller: controller,
            style: TextStyle(color: Colors.black87),
            onChanged: (text) {
              isInputMatchingText.value = text == textToMatch;
            },
          ),
        ],
      ),
      actions: <Widget>[
        Visibility(
          visible: isInputMatchingText.value,
          child: FlatButton(
            child: Text(
              'DELETE',
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
            onPressed: deleteCall,
          ),
        ),
        FlatButton(
          child: Text('NO'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }

  AlertDialog _buildStandard(BuildContext context) {
    return AlertDialog(
      title: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      content: Text(
        content,
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(
            'YES',
            style: TextStyle(
              color: Colors.redAccent,
            ),
          ),
          onPressed: deleteCall,
        ),
        FlatButton(
          child: Text('NO'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
