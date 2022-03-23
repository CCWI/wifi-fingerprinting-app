import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../03_domain/entities/settings/algorithm.dart';
import '../../../../03_domain/entities/settings/settings.dart';

class ChooseAlgorithmAlert extends HookWidget {
  final Settings _settings;
  final Function(Settings) _onSave;

  const ChooseAlgorithmAlert({
    Key key,
    @required Settings settings,
    @required Function(Settings) onSave,
  })  : assert(settings != null),
        assert(onSave != null),
        _settings = settings,
        _onSave = onSave,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _algorithmValue = useState(_settings.locationAlgorithm);

    return AlertDialog(
      title: Container(
        alignment: Alignment.center,
        child:
            Text('Choose an Algorithm', style: TextStyle(color: Colors.black)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Radio(
                value: Algorithm.values[0],
                onChanged: (algorithm) {
                  _algorithmValue.value = algorithm;
                },
                groupValue: _algorithmValue.value,
              ),
              Text(
                'KNN',
                style: TextStyle(color: Colors.black87),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Radio(
                value: Algorithm.values[1],
                onChanged: (algorithm) {
                  _algorithmValue.value = algorithm;
                },
                groupValue: _algorithmValue.value,
              ),
              Text(
                'Weighted KNN',
                style: TextStyle(color: Colors.black87),
              ),
            ],
          ),
          SizedBox(height: 25.0),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(
            'CANCEL',
            style: TextStyle(
              color: Colors.redAccent,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        FlatButton(
          child: Text('OK'),
          onPressed: () {
            _onSave(_settings.copyWith(
              locationAlgorithm: _algorithmValue.value,
            ));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
