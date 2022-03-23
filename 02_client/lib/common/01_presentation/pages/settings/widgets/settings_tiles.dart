import 'package:flutter/material.dart';

import '../../../../03_domain/entities/settings/settings.dart';
import 'choose_algorithm_alert.dart';
import 'enter_knn_value_alert.dart';

class SettingsTiles extends StatelessWidget {
  final Settings _settings;
  final Function(Settings) _onSave;

  const SettingsTiles({
    Key key,
    Settings settings,
    Function(Settings) onSave,
  })  : assert(settings != null),
        assert(onSave != null),
        _settings = settings,
        _onSave = onSave,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildSettingsTiles(context),
    );
  }

  List<Widget> _buildSettingsTiles(BuildContext context) {
    return [
      SizedBox(
        height: 15.0,
      ),
      Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 80.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: ListTile(
          title: Text(
            'K-Value for KNN',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          subtitle: Text(
            _settings.knnKValue.getOrCrash().toString(),
            style: Theme.of(context).textTheme.subtitle2,
          ),
          onTap: () => showDialog(
            context: context,
            builder: (_) => EnterKnnValueAlert(
              settings: _settings,
              onSave: _onSave,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 80.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: ListTile(
          title: Text(
            'Position Estimation Algorithm',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          subtitle: Text(
            _settings.locationAlgorithm.toString().split('.').last,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          onTap: () => showDialog(
            context: context,
            builder: (_) => ChooseAlgorithmAlert(
              settings: _settings,
              onSave: _onSave,
            ),
          ),
        ),
      ),
    ];
  }
}
