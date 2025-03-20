import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/presentation/presentation.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    required this.searchCallback,
    super.key,
  });

  final void Function(String search) searchCallback;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;
  String _previousSearch = ''; // Almacena el valor anterior de búsqueda

  void _onSearchChanged(String value) {
    if (value == _previousSearch) {
      // Si el valor no cambió, no hacer nada
      return;
    }

    // Cancelar el timer si existe uno
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    // Crear un nuevo timer para esperar que el usuario deje de escribir
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (value.isEmpty || value.length >= 2) {
        _previousSearch = value; // Actualiza el valor anterior
        widget.searchCallback.call(value);
      }
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TextField(
      onChanged: _onSearchChanged,
      controller: _controller,
      decoration: InputDecoration(
        hintText: l10n.search,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            final value = _controller.text;
            if (value != _previousSearch) {
              widget.searchCallback.call(value);
            }
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
