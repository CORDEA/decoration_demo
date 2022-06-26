import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decorator.freezed.dart';

class Decorator extends StatefulWidget {
  const Decorator({Key? key}) : super(key: key);

  @override
  State<Decorator> createState() => _DecoratorState();
}

class _DecoratorState extends State<Decorator> {
  final canvasKey = GlobalKey();
  final controller = TextEditingController();
  _DecorationLayer layer = const _DecorationLayer(
    backgroundColor: Colors.black12,
    strokeColor: Colors.black,
    strokeWidth: 1,
    cornerRadius: 5,
    nodes: [],
  );
  _DecorationType type = _DecorationType.text;
  _DecorationNode waitingNode =
      const _DecorationNode.base(position: _DecorationNodePosition.empty);
  _DecorationNode editingNode =
      const _DecorationNode.base(position: _DecorationNodePosition.empty);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: ColoredBox(
                  color: Colors.black12,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        key: canvasKey,
                        onTapUp: (details) {
                          if (editingNode is! _BaseNode) {
                            return;
                          }
                          final size =
                              canvasKey.currentContext?.size ?? Size.zero;
                          if (size.isEmpty) {
                            return;
                          }
                          final position = details.localPosition;
                          final tapped = layer.nodes.firstWhereOrNull(
                            (e) => e.normalizedRect(size).contains(position),
                          );
                          setState(() {
                            if (tapped == null) {
                              editingNode = _DecorationNode.base(
                                position: _DecorationNodePosition(
                                  position: position,
                                  size: size,
                                ),
                              );
                              waitingNode = const _DecorationNode.base(
                                position: _DecorationNodePosition.empty,
                              );
                            } else {
                              waitingNode = tapped;
                            }
                          });
                        },
                        child: CustomPaint(painter: _Painter(layer)),
                      ),
                      Visibility(
                        visible: waitingNode.maybeMap(
                          base: (_) => false,
                          orElse: () => true,
                        ),
                        child: Positioned(
                          left: waitingNode.position.position.dx +
                              _Tooltip._margin,
                          top: waitingNode.position.position.dy +
                              _Tooltip._margin,
                          child: _Tooltip(
                            onSelected: (e) {
                              switch (e) {
                                case _TooltipResult.move:
                                  // TODO: Handle this case.
                                  break;
                                case _TooltipResult.resize:
                                  // TODO: Handle this case.
                                  break;
                                case _TooltipResult.edit:
                                  setState(() {
                                    editingNode = waitingNode;
                                    waitingNode = const _DecorationNode.base(
                                      position: _DecorationNodePosition.empty,
                                    );
                                  });
                                  break;
                              }
                            },
                            resizable: waitingNode.maybeMap(
                              box: (_) => true,
                              orElse: () => false,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ] +
          _buildEditor(),
    );
  }

  Widget _buildRadio(String title, _DecorationType ownType) {
    return Flexible(
      child: Row(
        children: [
          Text(title),
          const SizedBox(width: 2),
          Radio<_DecorationType>(
            value: ownType,
            groupValue: type,
            onChanged: (value) {
              if (value == null) {
                return;
              }
              setState(() {
                type = value;
              });
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _buildEditor() {
    if (editingNode.position.isEmpty) {
      return [];
    }
    final List<Widget> section;
    switch (type) {
      case _DecorationType.text:
        section = _buildTextSection();
        break;
      case _DecorationType.box:
        section = [];
        break;
      case _DecorationType.icon:
        section = [];
        break;
    }
    return <Widget>[
          const SizedBox(height: 8),
          Row(
            children: [
              _buildRadio('Text', _DecorationType.text),
              _buildRadio('Box', _DecorationType.box),
              _buildRadio('Icon', _DecorationType.icon),
            ],
          ),
        ] +
        section +
        [
          const SizedBox(height: 36),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  layer = layer.copyWith(nodes: layer.nodes + [editingNode]);
                  editingNode = const _DecorationNode.base(
                    position: _DecorationNodePosition.empty,
                  );
                });
              },
              child: const Text('Submit'),
            ),
          ),
        ];
  }

  List<Widget> _buildTextSection() {
    final node = editingNode.maybeMap(
      text: (node) => node,
      orElse: () => _TextNode(
        text: '',
        color: Colors.black,
        backgroundColor: Colors.transparent,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        position: editingNode.position,
      ),
    );
    return [
      Builder(builder: (context) {
        if (controller.text != node.text) {
          controller.text = node.text;
        }
        return TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: 'Text'),
          onChanged: (text) {
            setState(() {
              editingNode = node.copyWith(text: text);
            });
          },
        );
      }),
      const SizedBox(height: 8),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text('Font size'),
      ),
      Slider(
        min: 10,
        max: 60,
        value: node.fontSize,
        onChanged: (value) {
          setState(() {
            editingNode = node.copyWith(fontSize: value);
          });
        },
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text('Color'),
      ),
      _ColorPicker(onSelected: (color) {
        setState(() {
          editingNode = node.copyWith(color: color);
        });
      }),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text('Background color'),
      ),
      _ColorPicker(onSelected: (color) {
        setState(() {
          editingNode = node.copyWith(backgroundColor: color);
        });
      }),
    ];
  }
}

class _Painter extends CustomPainter {
  _Painter(this.layer);

  final _DecorationLayer layer;

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty) {
      return;
    }
    final rect = RRect.fromLTRBR(
      0,
      0,
      size.width,
      size.height,
      Radius.circular(layer.cornerRadius),
    );
    canvas.drawRRect(
      rect,
      Paint()
        ..style = PaintingStyle.fill
        ..color = layer.backgroundColor,
    );
    canvas.drawRRect(
      rect,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = layer.strokeWidth
        ..color = layer.strokeColor,
    );

    for (final node in layer.nodes) {
      node.map(
        base: (_) {},
        text: (node) => _drawText(canvas, size, node),
        box: (node) => _drawBox(canvas, size, node),
        icon: (node) => _drawIcon(canvas, size, node),
      );
    }
  }

  void _drawText(Canvas canvas, Size size, _TextNode node) {
    final painter = node.painter..layout();
    painter.paint(canvas, node.position.normalizedPosition(size));
  }

  void _drawBox(Canvas canvas, Size size, _BoxNode node) {
    final paint = Paint()..color = node.color;
    final position = node.position.normalizedPosition(size);
    final rect = Rect.fromLTRB(
      position.dx,
      position.dy,
      node.size.width,
      node.size.height,
    );
    switch (node.shape) {
      case BoxShape.rectangle:
        canvas.drawRect(rect, paint);
        break;
      case BoxShape.circle:
        canvas.drawOval(rect, paint);
        break;
    }
  }

  void _drawIcon(Canvas canvas, Size size, _IconNode node) {
    final painter = TextPainter(text: WidgetSpan(child: node.icon))..layout();
    painter.paint(canvas, node.position.normalizedPosition(size));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class _ColorPicker extends StatelessWidget {
  static final colors = [
    Colors.transparent,
    Colors.black,
    Colors.white,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.lime,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.purple,
  ];

  const _ColorPicker({required this.onSelected});

  final ValueChanged<Color> onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: colors
            .map(
              (e) => Expanded(
                child: InkWell(
                  onTap: () => onSelected(e),
                  child: ColoredBox(
                    color: e,
                    child: const SizedBox.expand(),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Tooltip extends StatelessWidget {
  const _Tooltip({
    required this.onSelected,
    required this.resizable,
  });

  static const _margin = 16;

  final ValueChanged<_TooltipResult> onSelected;
  final bool resizable;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextButton(
              onPressed: () => onSelected(_TooltipResult.move),
              child: const Text('Move'),
            ),
            if (resizable)
              TextButton(
                onPressed: () => onSelected(_TooltipResult.resize),
                child: const Text('Resize'),
              ),
            TextButton(
              onPressed: () => onSelected(_TooltipResult.edit),
              child: const Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}

enum _TooltipResult { move, resize, edit }

@freezed
class _DecorationLayer with _$_DecorationLayer {
  const factory _DecorationLayer({
    required Color backgroundColor,
    required Color strokeColor,
    required double strokeWidth,
    required double cornerRadius,
    required List<_DecorationNode> nodes,
  }) = __DecorationLayer;
}

@freezed
class _DecorationNode with _$_DecorationNode {
  const factory _DecorationNode.base({
    required _DecorationNodePosition position,
  }) = _BaseNode;

  @With<_TextNodeBase>()
  factory _DecorationNode.text({
    required String text,
    required Color color,
    required Color backgroundColor,
    required double fontSize,
    required FontWeight fontWeight,
    required _DecorationNodePosition position,
  }) = _TextNode;

  const factory _DecorationNode.box({
    required Color color,
    required BoxShape shape,
    required _DecorationNodePosition position,
    required Size size,
  }) = _BoxNode;

  const factory _DecorationNode.icon({
    required Icon icon,
    required _DecorationNodePosition position,
  }) = _IconNode;

  static const _iconSize = 24.0;
}

mixin _TextNodeBase {
  String get text;

  Color get color;

  Color get backgroundColor;

  double get fontSize;

  FontWeight get fontWeight;

  TextPainter get painter {
    _painter ??= TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          backgroundColor: backgroundColor,
        ),
      ),
    );
    return _painter!;
  }

  TextPainter? _painter;

  Size get size => (painter..layout()).size;
}

extension _DecorationNodeExt on _DecorationNode {
  Rect normalizedRect(Size canvasSize) {
    final position = map(
      base: (_) => Offset.zero,
      text: (e) => e.position.normalizedPosition(canvasSize),
      box: (e) => e.position.normalizedPosition(canvasSize),
      icon: (e) => e.position.normalizedPosition(canvasSize),
    );
    final size = map(
      base: (_) => Size.zero,
      text: (e) => e.size,
      box: (e) => e.size,
      icon: (_) => const Size.square(_DecorationNode._iconSize),
    );
    return Rect.fromLTWH(
      position.dx,
      position.dy,
      size.width,
      size.height,
    );
  }
}

@freezed
class _DecorationNodePosition with _$_DecorationNodePosition {
  const _DecorationNodePosition._();

  const factory _DecorationNodePosition({
    required Offset position,
    required Size size,
  }) = __DecorationNodePosition;

  static const empty =
      _DecorationNodePosition(position: Offset.zero, size: Size.zero);

  bool get isEmpty => this == empty;

  Offset normalizedPosition(Size size) {
    final widthFactor = size.width / this.size.width;
    final heightFactor = size.height / this.size.height;
    return Offset(position.dx * widthFactor, position.dy * heightFactor);
  }
}

enum _DecorationType { text, box, icon }
