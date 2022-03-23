import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../03_domain/entities/signal/signal.dart';

class NetworksList extends StatelessWidget {
  final KtList<Signal> _networks;
  final Future<void> Function(BuildContext) _onRefresh;
  final void Function(BuildContext, Signal) _onTap;
  final bool _refreshAllowed;

  const NetworksList({
    Key key,
    @required KtList<Signal> networks,
    Future<void> Function(BuildContext) onRefresh,
    void Function(BuildContext, Signal) onTap,
    bool refreshAllowed = true,
  })  : _networks = networks,
        _onRefresh = onRefresh,
        _onTap = onTap,
        _refreshAllowed = refreshAllowed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_refreshAllowed) {
      return RefreshIndicator(
        child: _listView(context),
        onRefresh: () => _onRefresh != null ? _onRefresh(context) : null,
      );
    } else {
      return _listView(context);
    }
  }

  Widget _buildTile(BuildContext context, int index) {
    return ListTile(
      onTap: () => _onTap != null ? _onTap(context, _networks[index]) : null,
      title: Container(
        padding: EdgeInsets.only(top: 7.0),
        child: Text(
          _networks[index].ssid.getOrCrash(),
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      subtitle: Column(
        children: <Widget>[
          SizedBox(height: 7.0),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'BSSID: ${_networks[index].bssid.getOrCrash()}',
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 7.0),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text(
                  'FREQUENCY: ${_networks[index].frequency.getOrCrash()} MHz',
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(
                  bottom: 4.0,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'RSS: ',
                      style: Theme.of(context).textTheme.overline,
                    ),
                    Text(
                      '${_networks[index].rss.getOrCrash().toInt()} dBm',
                      style: Theme.of(context).textTheme.overline.copyWith(
                          color: _rssValueToColor(
                              _networks[index].rss.getOrCrash())),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _listView(BuildContext context) {
    return ListView.separated(
      itemCount: _networks.size,
      itemBuilder: (context, index) => Material(
        color: Theme.of(context).accentColor,
        child: InkWell(
          child: _buildTile(context, index),
        ),
      ),
      separatorBuilder: (context, _) => Divider(
        color: Theme.of(context).primaryColorLight,
      ),
    );
  }

  Color _rssValueToColor(double rssValue) {
    if (rssValue >= -40.0) {
      return Colors.green;
    } else if (rssValue < -40.0 && rssValue >= -67.0) {
      return Colors.yellow;
    } else if (rssValue < -67.0 && rssValue >= -80.0) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}
