
// Class Model for exemple
class Colors {
  String hex;
  String name;

  Colors({
    required this.hex,
    required this.name,
  });

  factory Colors.fromMap(Map<String, dynamic> json) => Colors(
    hex: json["hex"],
    name: json["name"],
  );

  Map<String, dynamic> toMap() => {
    "hex": hex,
    "name": name,
  };
}

// List of Colors
var greenColors = [
  Colors(hex: '99E2B4', name: "Green"),
  Colors(hex: '88D4AB', name: "Green"),
  Colors(hex: '78C6A3', name: "Green"),
  Colors(hex: '67B99A', name: "Green"),
  Colors(hex: '56AB91', name: "Green"),
  Colors(hex: '469D89', name: "Green"),
  Colors(hex: '358F80', name: "Green"),
  Colors(hex: '248277', name: "Green"),
  Colors(hex: '14746F', name: "Green"),
  Colors(hex: '036666', name: "Green"),
];

void main() {
  // Simple Use
  for (var i = 0; i < greenColors.length; i++) {
    print('Color: ${greenColors[i].name}, Hex: ${greenColors[i].hex}');
  }
} 