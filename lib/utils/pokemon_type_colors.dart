import 'package:flutter/material.dart';

class PokemonTypeColors {
  static List<Color> getCardColors(String type) {
    switch (type.toLowerCase()) {
      case 'normal':
        return const [
          Color(0xFFE0E0E0),
          Color(0xFFF5F5F5),
        ];

      case 'fire':
        return const [
          Color(0xFFFFB38A),
          Color(0xFFFFE5D5),
        ];

      case 'water':
        return const [
          Color(0xFFA8D8FF),
          Color(0xFFE0F0FF),
        ];

      case 'electric':
        return const [
          Color(0xFFFFE98A),
          Color(0xFFFFF9D6),
        ];

      case 'grass':
        return const [
          Color(0xFFB9E49A),
          Color(0xFFD7EFC5),
        ];

      case 'ice':
        return const [
          Color(0xFFC4F1FF),
          Color(0xFFE8FAFF),
        ];

      case 'fighting':
        return const [
          Color(0xFFFFAAA3),
          Color(0xFFFFD9D5),
        ];

      case 'poison':
        return const [
          Color(0xFFD9A7E0),
          Color(0xFFF1D9F5),
        ];

      case 'ground':
        return const [
          Color(0xFFE8D3A3),
          Color(0xFFF8EED8),
        ];

      case 'flying':
        return const [
          Color(0xFFD0C0F5),
          Color(0xFFEDE5FF),
        ];

      case 'psychic':
        return const [
          Color(0xFFFFB0C5),
          Color(0xFFFFDDE7),
        ];

      case 'bug':
        return const [
          Color(0xFFD0E88B),
          Color(0xFFEAF5C8),
        ];

      case 'rock':
        return const [
          Color(0xFFD9CE9A),
          Color(0xFFF0EBD4),
        ];

      case 'ghost':
        return const [
          Color(0xFFC6B5E5),
          Color(0xFFE6DDF5),
        ];

      case 'dragon':
        return const [
          Color(0xFFBBA8F5),
          Color(0xFFE0D9FF),
        ];

      case 'dark':
        return const [
          Color(0xFFB7B0B0),
          Color(0xFFE3E0E0),
        ];

      case 'steel':
        return const [
          Color(0xFFC8D1D9),
          Color(0xFFE9EEF2),
        ];

      case 'fairy':
        return const [
          Color(0xFFFFC4D9),
          Color(0xFFFFE6F0),
        ];

      default:
        return const [
          Color(0xFFD6D6D6),
          Color(0xFFF0F0F0),
        ];
    }
  }

  static List<Color> getColors(String type) {
    switch (type.toLowerCase()) {
      case 'normal':
        return const [
          Color(0xFFF5F5F5),
          Color(0xFFE6E6E6),
          Color(0xFFD6D6D6),
          Color(0xFFA8A77A),
        ];

      case 'fire':
        return const [
          Color(0xFFFFE5D5),
          Color(0xFFFFB38A),
          Color(0xFFFF8A65),
          Color(0xFFF08030),
        ];

      case 'water':
        return const [
          Color(0xFFE0F0FF),
          Color(0xFFA8D8FF),
          Color(0xFF78B9E6),
          Color(0xFF6890F0),
        ];

      case 'electric':
        return const [
          Color(0xFFFFF9D6),
          Color(0xFFFFE98A),
          Color(0xFFFFD447),
          Color(0xFFF8D030),
        ];

      case 'grass':
        return const [
          Color(0xFFEAF8DF),
          Color(0xFFC8EBAF),
          Color(0xFF9BD574),
          Color(0xFF7AC74C),
        ];

      case 'ice':
        return const [
          Color(0xFFE8FAFF),
          Color(0xFFC4F1FF),
          Color(0xFF9DE4F5),
          Color(0xFF96D9D6),
        ];

      case 'fighting':
        return const [
          Color(0xFFFFD9D5),
          Color(0xFFFFAAA3),
          Color(0xFFE57373),
          Color(0xFFC22E28),
        ];

      case 'poison':
        return const [
          Color(0xFFF1D9F5),
          Color(0xFFD9A7E0),
          Color(0xFFB86CC5),
          Color(0xFFA33EA1),
        ];

      case 'ground':
        return const [
          Color(0xFFF8EED8),
          Color(0xFFE8D3A3),
          Color(0xFFD6B66A),
          Color(0xFFE2BF65),
        ];

      case 'flying':
        return const [
          Color(0xFFEDE5FF),
          Color(0xFFD0C0F5),
          Color(0xFFB8A0E8),
          Color(0xFFA98FF3),
        ];

      case 'psychic':
        return const [
          Color(0xFFFFDDE7),
          Color(0xFFFFB0C5),
          Color(0xFFF47C9B),
          Color(0xFFF95587),
        ];

      case 'bug':
        return const [
          Color(0xFFEAF5C8),
          Color(0xFFD0E88B),
          Color(0xFFA8C95A),
          Color(0xFFA6B91A),
        ];

      case 'rock':
        return const [
          Color(0xFFF0EBD4),
          Color(0xFFD9CE9A),
          Color(0xFFB9A85A),
          Color(0xFFB6A136),
        ];

      case 'ghost':
        return const [
          Color(0xFFE6DDF5),
          Color(0xFFC6B5E5),
          Color(0xFF9A82C4),
          Color(0xFF735797),
        ];

      case 'dragon':
        return const [
          Color(0xFFE0D9FF),
          Color(0xFFBBA8F5),
          Color(0xFF8A70D6),
          Color(0xFF6F35FC),
        ];

      case 'dark':
        return const [
          Color(0xFFE3E0E0),
          Color(0xFFB7B0B0),
          Color(0xFF756F6F),
          Color(0xFF705746),
        ];

      case 'steel':
        return const [
          Color(0xFFE9EEF2),
          Color(0xFFC8D1D9),
          Color(0xFFAAB7C4),
          Color(0xFFB7B7CE),
        ];

      case 'fairy':
        return const [
          Color(0xFFFFE6F0),
          Color(0xFFFFC4D9),
          Color(0xFFF4A6C1),
          Color(0xFFD685AD),
        ];

      default:
        return const [
          Color(0xFFF0F0F0),
          Color(0xFFD6D6D6),
          Color(0xFFB8B8B8),
          Color(0xFF909090),
        ];
    }
  }

  static Color getColor(String type) {
    switch (type.toLowerCase()) {
      case 'normal':
        return const Color(0xFFA8A77A);
      case 'fire':
        return const Color(0xFFF08030);
      case 'water':
        return const Color(0xFF6890F0);
      case 'electric':
        return const Color(0xFFF8D030);
      case 'grass':
        return const Color(0xFF7AC74C);
      case 'ice':
        return const Color(0xFF96D9D6);
      case 'fighting':
        return const Color(0xFFC22E28);
      case 'poison':
        return const Color(0xFFA33EA1);
      case 'ground':
        return const Color(0xFFE2BF65);
      case 'flying':
        return const Color(0xFFA98FF3);
      case 'psychic':
        return const Color(0xFFF95587);
      case 'bug':
        return const Color(0xFFA6B91A);
      case 'rock':
        return const Color(0xFFB6A136);
      case 'ghost':
        return const Color(0xFF735797);
      case 'dragon':
        return const Color(0xFF6F35FC);
      case 'dark':
        return const Color(0xFF705746);
      case 'steel':
        return const Color(0xFFB7B7CE);
      case 'fairy':
        return const Color(0xFFD685AD);
      default:
        return const Color(0xFF909090);
    }
  }
}