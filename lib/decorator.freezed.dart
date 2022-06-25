// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'decorator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$_DecorationLayer {
  Color get backgroundColor => throw _privateConstructorUsedError;
  Color get strokeColor => throw _privateConstructorUsedError;
  int get strokeWidth => throw _privateConstructorUsedError;
  int get cornerRadius => throw _privateConstructorUsedError;
  List<_DecorationNode> get nodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DecorationLayerCopyWith<_DecorationLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecorationLayerCopyWith<$Res> {
  factory _$DecorationLayerCopyWith(
          _DecorationLayer value, $Res Function(_DecorationLayer) then) =
      __$DecorationLayerCopyWithImpl<$Res>;
  $Res call(
      {Color backgroundColor,
      Color strokeColor,
      int strokeWidth,
      int cornerRadius,
      List<_DecorationNode> nodes});
}

/// @nodoc
class __$DecorationLayerCopyWithImpl<$Res>
    implements _$DecorationLayerCopyWith<$Res> {
  __$DecorationLayerCopyWithImpl(this._value, this._then);

  final _DecorationLayer _value;
  // ignore: unused_field
  final $Res Function(_DecorationLayer) _then;

  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? strokeColor = freezed,
    Object? strokeWidth = freezed,
    Object? cornerRadius = freezed,
    Object? nodes = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      strokeColor: strokeColor == freezed
          ? _value.strokeColor
          : strokeColor // ignore: cast_nullable_to_non_nullable
              as Color,
      strokeWidth: strokeWidth == freezed
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as int,
      cornerRadius: cornerRadius == freezed
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as int,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<_DecorationNode>,
    ));
  }
}

/// @nodoc
abstract class _$$__DecorationLayerCopyWith<$Res>
    implements _$DecorationLayerCopyWith<$Res> {
  factory _$$__DecorationLayerCopyWith(
          _$__DecorationLayer value, $Res Function(_$__DecorationLayer) then) =
      __$$__DecorationLayerCopyWithImpl<$Res>;
  @override
  $Res call(
      {Color backgroundColor,
      Color strokeColor,
      int strokeWidth,
      int cornerRadius,
      List<_DecorationNode> nodes});
}

/// @nodoc
class __$$__DecorationLayerCopyWithImpl<$Res>
    extends __$DecorationLayerCopyWithImpl<$Res>
    implements _$$__DecorationLayerCopyWith<$Res> {
  __$$__DecorationLayerCopyWithImpl(
      _$__DecorationLayer _value, $Res Function(_$__DecorationLayer) _then)
      : super(_value, (v) => _then(v as _$__DecorationLayer));

  @override
  _$__DecorationLayer get _value => super._value as _$__DecorationLayer;

  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? strokeColor = freezed,
    Object? strokeWidth = freezed,
    Object? cornerRadius = freezed,
    Object? nodes = freezed,
  }) {
    return _then(_$__DecorationLayer(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      strokeColor: strokeColor == freezed
          ? _value.strokeColor
          : strokeColor // ignore: cast_nullable_to_non_nullable
              as Color,
      strokeWidth: strokeWidth == freezed
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as int,
      cornerRadius: cornerRadius == freezed
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as int,
      nodes: nodes == freezed
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<_DecorationNode>,
    ));
  }
}

/// @nodoc

class _$__DecorationLayer implements __DecorationLayer {
  const _$__DecorationLayer(
      {required this.backgroundColor,
      required this.strokeColor,
      required this.strokeWidth,
      required this.cornerRadius,
      required final List<_DecorationNode> nodes})
      : _nodes = nodes;

  @override
  final Color backgroundColor;
  @override
  final Color strokeColor;
  @override
  final int strokeWidth;
  @override
  final int cornerRadius;
  final List<_DecorationNode> _nodes;
  @override
  List<_DecorationNode> get nodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  @override
  String toString() {
    return '_DecorationLayer(backgroundColor: $backgroundColor, strokeColor: $strokeColor, strokeWidth: $strokeWidth, cornerRadius: $cornerRadius, nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__DecorationLayer &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality()
                .equals(other.strokeColor, strokeColor) &&
            const DeepCollectionEquality()
                .equals(other.strokeWidth, strokeWidth) &&
            const DeepCollectionEquality()
                .equals(other.cornerRadius, cornerRadius) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(strokeColor),
      const DeepCollectionEquality().hash(strokeWidth),
      const DeepCollectionEquality().hash(cornerRadius),
      const DeepCollectionEquality().hash(_nodes));

  @JsonKey(ignore: true)
  @override
  _$$__DecorationLayerCopyWith<_$__DecorationLayer> get copyWith =>
      __$$__DecorationLayerCopyWithImpl<_$__DecorationLayer>(this, _$identity);
}

abstract class __DecorationLayer implements _DecorationLayer {
  const factory __DecorationLayer(
      {required final Color backgroundColor,
      required final Color strokeColor,
      required final int strokeWidth,
      required final int cornerRadius,
      required final List<_DecorationNode> nodes}) = _$__DecorationLayer;

  @override
  Color get backgroundColor => throw _privateConstructorUsedError;
  @override
  Color get strokeColor => throw _privateConstructorUsedError;
  @override
  int get strokeWidth => throw _privateConstructorUsedError;
  @override
  int get cornerRadius => throw _privateConstructorUsedError;
  @override
  List<_DecorationNode> get nodes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$__DecorationLayerCopyWith<_$__DecorationLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$_DecorationNode {
  Offset get position => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int textSize, Offset position) text,
    required TResult Function(
            Color color, BoxShape shape, Offset position, Size size)
        box,
    required TResult Function(Icon icon, Offset position) icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextNode value) text,
    required TResult Function(_BoxNode value) box,
    required TResult Function(_IconNode value) icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DecorationNodeCopyWith<_DecorationNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecorationNodeCopyWith<$Res> {
  factory _$DecorationNodeCopyWith(
          _DecorationNode value, $Res Function(_DecorationNode) then) =
      __$DecorationNodeCopyWithImpl<$Res>;
  $Res call({Offset position});
}

/// @nodoc
class __$DecorationNodeCopyWithImpl<$Res>
    implements _$DecorationNodeCopyWith<$Res> {
  __$DecorationNodeCopyWithImpl(this._value, this._then);

  final _DecorationNode _value;
  // ignore: unused_field
  final $Res Function(_DecorationNode) _then;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc
abstract class _$$_TextNodeCopyWith<$Res>
    implements _$DecorationNodeCopyWith<$Res> {
  factory _$$_TextNodeCopyWith(
          _$_TextNode value, $Res Function(_$_TextNode) then) =
      __$$_TextNodeCopyWithImpl<$Res>;
  @override
  $Res call({String text, int textSize, Offset position});
}

/// @nodoc
class __$$_TextNodeCopyWithImpl<$Res>
    extends __$DecorationNodeCopyWithImpl<$Res>
    implements _$$_TextNodeCopyWith<$Res> {
  __$$_TextNodeCopyWithImpl(
      _$_TextNode _value, $Res Function(_$_TextNode) _then)
      : super(_value, (v) => _then(v as _$_TextNode));

  @override
  _$_TextNode get _value => super._value as _$_TextNode;

  @override
  $Res call({
    Object? text = freezed,
    Object? textSize = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_TextNode(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      textSize: textSize == freezed
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as int,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_TextNode implements _TextNode {
  const _$_TextNode(
      {required this.text, required this.textSize, required this.position});

  @override
  final String text;
  @override
  final int textSize;
  @override
  final Offset position;

  @override
  String toString() {
    return '_DecorationNode.text(text: $text, textSize: $textSize, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextNode &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.textSize, textSize) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(textSize),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_TextNodeCopyWith<_$_TextNode> get copyWith =>
      __$$_TextNodeCopyWithImpl<_$_TextNode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int textSize, Offset position) text,
    required TResult Function(
            Color color, BoxShape shape, Offset position, Size size)
        box,
    required TResult Function(Icon icon, Offset position) icon,
  }) {
    return text(this.text, textSize, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
  }) {
    return text?.call(this.text, textSize, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text, textSize, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextNode value) text,
    required TResult Function(_BoxNode value) box,
    required TResult Function(_IconNode value) icon,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _TextNode implements _DecorationNode {
  const factory _TextNode(
      {required final String text,
      required final int textSize,
      required final Offset position}) = _$_TextNode;

  String get text => throw _privateConstructorUsedError;
  int get textSize => throw _privateConstructorUsedError;
  @override
  Offset get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TextNodeCopyWith<_$_TextNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BoxNodeCopyWith<$Res>
    implements _$DecorationNodeCopyWith<$Res> {
  factory _$$_BoxNodeCopyWith(
          _$_BoxNode value, $Res Function(_$_BoxNode) then) =
      __$$_BoxNodeCopyWithImpl<$Res>;
  @override
  $Res call({Color color, BoxShape shape, Offset position, Size size});
}

/// @nodoc
class __$$_BoxNodeCopyWithImpl<$Res> extends __$DecorationNodeCopyWithImpl<$Res>
    implements _$$_BoxNodeCopyWith<$Res> {
  __$$_BoxNodeCopyWithImpl(_$_BoxNode _value, $Res Function(_$_BoxNode) _then)
      : super(_value, (v) => _then(v as _$_BoxNode));

  @override
  _$_BoxNode get _value => super._value as _$_BoxNode;

  @override
  $Res call({
    Object? color = freezed,
    Object? shape = freezed,
    Object? position = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_BoxNode(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      shape: shape == freezed
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc

class _$_BoxNode implements _BoxNode {
  const _$_BoxNode(
      {required this.color,
      required this.shape,
      required this.position,
      required this.size});

  @override
  final Color color;
  @override
  final BoxShape shape;
  @override
  final Offset position;
  @override
  final Size size;

  @override
  String toString() {
    return '_DecorationNode.box(color: $color, shape: $shape, position: $position, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoxNode &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$$_BoxNodeCopyWith<_$_BoxNode> get copyWith =>
      __$$_BoxNodeCopyWithImpl<_$_BoxNode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int textSize, Offset position) text,
    required TResult Function(
            Color color, BoxShape shape, Offset position, Size size)
        box,
    required TResult Function(Icon icon, Offset position) icon,
  }) {
    return box(color, shape, position, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
  }) {
    return box?.call(color, shape, position, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
    required TResult orElse(),
  }) {
    if (box != null) {
      return box(color, shape, position, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextNode value) text,
    required TResult Function(_BoxNode value) box,
    required TResult Function(_IconNode value) icon,
  }) {
    return box(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
  }) {
    return box?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
    required TResult orElse(),
  }) {
    if (box != null) {
      return box(this);
    }
    return orElse();
  }
}

abstract class _BoxNode implements _DecorationNode {
  const factory _BoxNode(
      {required final Color color,
      required final BoxShape shape,
      required final Offset position,
      required final Size size}) = _$_BoxNode;

  Color get color => throw _privateConstructorUsedError;
  BoxShape get shape => throw _privateConstructorUsedError;
  @override
  Offset get position => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BoxNodeCopyWith<_$_BoxNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IconNodeCopyWith<$Res>
    implements _$DecorationNodeCopyWith<$Res> {
  factory _$$_IconNodeCopyWith(
          _$_IconNode value, $Res Function(_$_IconNode) then) =
      __$$_IconNodeCopyWithImpl<$Res>;
  @override
  $Res call({Icon icon, Offset position});
}

/// @nodoc
class __$$_IconNodeCopyWithImpl<$Res>
    extends __$DecorationNodeCopyWithImpl<$Res>
    implements _$$_IconNodeCopyWith<$Res> {
  __$$_IconNodeCopyWithImpl(
      _$_IconNode _value, $Res Function(_$_IconNode) _then)
      : super(_value, (v) => _then(v as _$_IconNode));

  @override
  _$_IconNode get _value => super._value as _$_IconNode;

  @override
  $Res call({
    Object? icon = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_IconNode(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_IconNode implements _IconNode {
  const _$_IconNode({required this.icon, required this.position});

  @override
  final Icon icon;
  @override
  final Offset position;

  @override
  String toString() {
    return '_DecorationNode.icon(icon: $icon, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IconNode &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_IconNodeCopyWith<_$_IconNode> get copyWith =>
      __$$_IconNodeCopyWithImpl<_$_IconNode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int textSize, Offset position) text,
    required TResult Function(
            Color color, BoxShape shape, Offset position, Size size)
        box,
    required TResult Function(Icon icon, Offset position) icon,
  }) {
    return icon(this.icon, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
  }) {
    return icon?.call(this.icon, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int textSize, Offset position)? text,
    TResult Function(Color color, BoxShape shape, Offset position, Size size)?
        box,
    TResult Function(Icon icon, Offset position)? icon,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(this.icon, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextNode value) text,
    required TResult Function(_BoxNode value) box,
    required TResult Function(_IconNode value) icon,
  }) {
    return icon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
  }) {
    return icon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextNode value)? text,
    TResult Function(_BoxNode value)? box,
    TResult Function(_IconNode value)? icon,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(this);
    }
    return orElse();
  }
}

abstract class _IconNode implements _DecorationNode {
  const factory _IconNode(
      {required final Icon icon, required final Offset position}) = _$_IconNode;

  Icon get icon => throw _privateConstructorUsedError;
  @override
  Offset get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IconNodeCopyWith<_$_IconNode> get copyWith =>
      throw _privateConstructorUsedError;
}
