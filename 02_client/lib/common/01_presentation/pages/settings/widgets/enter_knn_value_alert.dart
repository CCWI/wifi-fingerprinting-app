import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../03_domain/entities/settings/settings.dart';
import '../../../../03_domain/value_objects/settings_value_objects.dart';

class EnterKnnValueAlert extends HookWidget {
  final Settings _settings;
  final Function(Settings) _onSave;

  const EnterKnnValueAlert({
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
    final _kValue = useState(_settings.knnKValue);
    final _kValueTextEditingController = useTextEditingController(
        text: _settings.knnKValue.getOrCrash().toString());

    return AlertDialog(
      title: Container(
        alignment: Alignment.center,
        child:
            Text('Enter a new K-value', style: TextStyle(color: Colors.black)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 25.0),
          TextFormField(
            controller: _kValueTextEditingController,
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
              signed: false,
            ),
            maxLength: 2,
            maxLengthEnforced: true,
            style: TextStyle(color: Colors.black87),
            onChanged: (text) {
              _kValue.value = KnnKValue.fromString(text);
            },
            validator: (_) {
              return _kValue.value.value.fold(
                (l) => l.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    numberCannotBeParsed: (f) => 'Must be a valid integer',
                    orElse: () => 'Invalid value'),
                (r) => null,
              );
            },
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
        Visibility(
          visible: _kValue.value.failureOrUnit.fold((f) => false, (u) => true),
          child: FlatButton(
            child: Text('OK'),
            onPressed: () {
              _onSave(_settings.copyWith(
                knnKValue: _kValue.value,
              ));
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
