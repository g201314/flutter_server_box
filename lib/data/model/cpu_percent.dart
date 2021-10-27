///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CpuStatus {
/*
{
  "user": 0,
  "sys": 0,
  "nice": 0,
  "idel": 0,
  "wa": 0,
  "hi": 0,
  "si": 0,
  "st": 0
} 
*/
  late String id;
  late double user;
  late double sys;
  late double nice;
  late double idle;
  late double iowait;
  late double irq;
  late double softirq;

  CpuStatus(
    this.id,
    this.user,
    this.sys,
    this.nice,
    this.idle,
    this.iowait,
    this.irq,
    this.softirq,
  );
  CpuStatus.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    user = json["user"]?.toInt();
    sys = json["sys"]?.toInt();
    nice = json["nice"]?.toInt();
    idle = json["idle"]?.toInt();
    iowait = json["iowait"]?.toInt();
    irq = json["irq"]?.toInt();
    softirq = json["softirq"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user"] = user;
    data["sys"] = sys;
    data["nice"] = nice;
    data["idle"] = idle;
    data["iowait"] = iowait;
    data["irq"] = irq;
    data["softirq"] = softirq;
    return data;
  }

  double get calculateUsedPercent {
    final used = idle / (user + sys + nice + iowait + irq + softirq + idle);
    return used.isNaN ? 0 : used;
  }
}
