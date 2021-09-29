class UsageInfo {
  UsageInfo(
      {this.firstTimeStamp,
      this.lastTimeStamp,
      this.lastTimeUsed,
      this.packageName,
      this.totalTimeInForeground});

  /// Construct class from the json map
  factory UsageInfo.fromMap(Map map) => UsageInfo(
        firstTimeStamp: DateTime.fromMillisecondsSinceEpoch(
            int.parse(map['firstTimeStamp'])),
        lastTimeStamp: DateTime.fromMillisecondsSinceEpoch(
            int.parse(map['lastTimeStamp'])),
        lastTimeUsed:
            DateTime.fromMillisecondsSinceEpoch(int.parse(map['lastTimeUsed'])),
        totalTimeInForeground:
            Duration(milliseconds: int.parse(map['totalTimeInForeground'])),
        packageName: map['packageName'],
      );

  final String? packageName;

  final DateTime? firstTimeStamp;
  final DateTime? lastTimeStamp;
  final DateTime? lastTimeUsed;

  final Duration? totalTimeInForeground;
}
