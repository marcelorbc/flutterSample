class MenuItem {
  final int id;
  final String label;
  final int position;
  final String route;
  List<MenuItem>? children;
  String? icon;

  MenuItem({
    required this.id,
    required this.label,
    required this.position,
    required this.route,
    this.children,
    this.icon,
  });
}
