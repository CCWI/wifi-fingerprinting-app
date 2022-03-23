import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kt_dart/kt.dart';
import 'package:path/path.dart';

import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
import '../../../02_application/form/project_form_bloc.dart';
import '../misc/build_context_x.dart';
import '../misc/floors_presentation_class.dart';

class ProjectFloorMapTile extends HookWidget {
  final int index;

  ProjectFloorMapTile({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final floorMap =
        context.floors.getOrElse(index, (_) => FloorMapPrimitive.empty());
    final imageScaleTextEditingController =
        useTextEditingController(text: floorMap.imageScale);
    final floorTextEditingController =
        useTextEditingController(text: floorMap.floor);
    final formBloc = context.bloc<ProjectFormBloc>();

    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColorLight,
        ),
      ),
      child: ListTile(
        title: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      'MAP FLOOR ${(index + 1).toString()}#',
                      style: Theme.of(context).textTheme.overline,
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Visibility(
                      visible: index > 0,
                      child: GestureDetector(
                        onTap: () {
                          context.floors =
                              context.floors.minusElement(floorMap);
                          formBloc.add(
                              ProjectFormEvent.floorsChanged(context.floors));
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 15.0, bottom: 15.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      alignment: Alignment.topLeft,
                      child: Text('Selected Image:'),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          '${floorMap.imagePath.isEmpty ? 'No image selected' : basename(floorMap.imagePath)}',
                          style: TextStyle(
                            color: formBloc.state.project.floors.value.fold(
                              (f) => null,
                              (floorMaps) => floorMaps[index]
                                  .imagePath
                                  .value
                                  .fold(
                                      (f) => f.maybeMap(
                                          empty: (f) => Colors.red,
                                          orElse: () => null),
                                      (_) => Colors.white),
                            ),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextFormField(
                controller: floorTextEditingController,
                decoration: inputDecorationAccentColorBackground(
                  context: context,
                  labelText: 'Building Floor Number',
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
                maxLength: 2,
                maxLengthEnforced: true,
                onChanged: (value) {
                  context.floors = context.floors.map((listFloorMap) =>
                      listFloorMap == floorMap
                          ? floorMap.copyWith(floor: value)
                          : listFloorMap);
                  formBloc.add(ProjectFormEvent.floorsChanged(context.floors));
                },
                validator: (_) {
                  return formBloc.state.project.floors.value.fold(
                    (f) => null,
                    (floorMaps) => floorMaps[index].floor.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'Cannot be empty',
                            numberCannotBeParsed: (f) =>
                                'Must be a valid integer',
                            notUnique: (f) => 'Floor number must be unique',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  );
                },
              ),
              TextFormField(
                controller: imageScaleTextEditingController,
                decoration: inputDecorationAccentColorBackground(
                  context: context,
                  labelText: 'Image Scale (cm)',
                  prefix: Text(
                    '1 : ',
                    style:
                        TextStyle(color: Theme.of(context).primaryColorLight),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
                maxLength: 15,
                maxLengthEnforced: true,
                onChanged: (value) {
                  context.floors = context.floors.map((listFloorMap) =>
                      listFloorMap == floorMap
                          ? floorMap.copyWith(imageScale: value)
                          : listFloorMap);
                  formBloc.add(ProjectFormEvent.floorsChanged(context.floors));
                },
                validator: (_) {
                  return formBloc.state.project.floors.value.fold(
                    (f) => null,
                    (floorMaps) => floorMaps[index].imageScale.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'Cannot be empty',
                            numberCannotBeParsed: (f) =>
                                'Must be a valid integer',
                            negativeNumberOrZero: (f) =>
                                'Number must be bigger than 0',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  );
                },
              ),
              FractionallySizedBox(
                widthFactor: 0.9,
                child: FlatButton.icon(
                  onPressed: () async {
                    var imageFile = await ImagePicker.pickImage(
                        source: ImageSource.gallery);
                    if (imageFile != null) {
                      context.floors = context.floors.map((listFloorMap) =>
                          listFloorMap == floorMap
                              ? floorMap.copyWith(imagePath: imageFile.path)
                              : listFloorMap);
                      formBloc
                          .add(ProjectFormEvent.floorsChanged(context.floors));
                    }
                  },
                  color: Theme.of(context).accentColor,
                  icon: Icon(
                    Icons.add_photo_alternate,
                    color: Theme.of(context).primaryColorLight,
                  ),
                  label: Text(
                    'ADD MAP',
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
