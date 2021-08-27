class MenuItem {
  final String label;
  final int position;
  final String route;
  List<MenuItem>? children;
  String? icon;

  MenuItem({
    required this.label,
    required this.position,
    required this.route,
    this.children,
    this.icon,
  });
}
