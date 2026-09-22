part of common;

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this._textFieldKey,
    required this._labelText,
    this._hintText,
    this._prefixIcon,
    this._suffixIcon,
    this._isObscureText = false,
    this._isDense = false,
    this._autofocus = false,
    this._readOnly = false,
    this._autocorrect = false,
    this._minLines = 1,
    this._maxLines = 5,
    required this._keyboardType,
    required this._textInputAction,
    this._inputFormatters,
    this._validator,
    this._onChanged,
    this._onFieldSubmitted,
    required this._controller,
    this._constraints,
    this._contentPadding,
    this._floatingLabelBehavior = FloatingLabelBehavior.always,
  });

  final ValueKey? _textFieldKey;
  final TextEditingController _controller;
  final String _labelText;
  final String? _hintText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final bool _isObscureText;
  final bool _isDense;
  final bool _autofocus;
  final bool _readOnly;
  final bool _autocorrect;
  final int _minLines;
  final int _maxLines;
  final TextInputType _keyboardType;
  final TextInputAction _textInputAction;
  final List<TextInputFormatter>? _inputFormatters;
  final String? Function(String?)? _validator;
  final Function(String)? _onChanged;
  final Function(String)? _onFieldSubmitted;
  final BoxConstraints? _constraints;
  final EdgeInsetsGeometry? _contentPadding;
  final FloatingLabelBehavior? _floatingLabelBehavior;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String _value = "";

  @override
  void initState() {
    super.initState();
    widget._controller.addListener(() => setTextValue());
  }

  @override
  void dispose() {
    widget._controller.removeListener(() => setTextValue());
    super.dispose();
  }

  void setTextValue() {
    setState(() {
      _value = widget._controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget._textFieldKey,
      controller: widget._controller,
      obscureText: widget._isObscureText,
      keyboardType: widget._keyboardType,
      textInputAction: widget._textInputAction,
      autofocus: widget._autofocus,
      readOnly: widget._readOnly,
      autocorrect: widget._autocorrect,
      minLines: widget._minLines,
      maxLines: widget._maxLines,
      decoration: InputDecoration(
        isDense: widget._isDense,
        labelText: widget._labelText,
        hintText: widget._hintText,
        floatingLabelBehavior: widget._floatingLabelBehavior,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        prefixIcon: widget._prefixIcon,
        suffixIcon: _value.isNotEmpty ? widget._suffixIcon : null,
        constraints: widget._constraints,
        contentPadding: widget._contentPadding,
      ),
      inputFormatters: widget._inputFormatters,
      validator: widget._validator,
      onChanged: widget._onChanged,
      onFieldSubmitted: widget._onFieldSubmitted,
    );
  }
}
