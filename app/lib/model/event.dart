class Event {
  // id should be a UUID/GUID to help avoid conflicts
  final String id;
  final String name;
  final String description;
  final String location;
  final DateTime startTime;
  final DateTime endTime;

  Event({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.startTime,
    required this.endTime,
  });
}
