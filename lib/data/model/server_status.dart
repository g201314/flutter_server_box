import 'package:toolbox/data/model/cpu_percent.dart';
import 'package:toolbox/data/model/disk_info.dart';
import 'package:toolbox/data/model/tcp_status.dart';

///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///

class ServerStatus {
/*
{
  "cpuPercent": 0,
  "memList": [
    1
  ],
  "sysVer": "",
  "uptime": "",
  "disk": [
    {
      "mountPath": "",
      "mountLocation": "",
      "usedPercent": 0,
      "used": "",
      "size": "",
      "avail": ""
    }
  ]
} 
*/

  List<CpuStatus>? cpuPercent;
  List<int?>? memList;
  String? sysVer;
  String? uptime;
  List<DiskInfo?>? disk;
  TcpStatus? tcp;

  ServerStatus(
      {this.cpuPercent,
      this.memList,
      this.sysVer,
      this.uptime,
      this.disk,
      this.tcp});
  ServerStatus.fromJson(Map<String, dynamic> json) {
    cpuPercent = [];
    for (var item in json["cpuPercent"]) {
      cpuPercent!.add(CpuStatus.fromJson(item));
    }
    if (json["memList"] != null) {
      final v = json["memList"];
      final arr0 = <int>[];
      v.forEach((v) {
        arr0.add(v.toInt());
      });
      memList = arr0;
    }
    sysVer = json["sysVer"]?.toString();
    uptime = json["uptime"]?.toString();
    if (json["disk"] != null) {
      final v = json["disk"];
      final arr0 = <DiskInfo>[];
      v.forEach((v) {
        arr0.add(DiskInfo.fromJson(v));
      });
      disk = arr0;
    }
    tcp = TcpStatus.fromJson(json['tcp']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["cpuPercent"] = cpuPercent;
    if (memList != null) {
      final v = memList;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v);
      }
      data["memList"] = arr0;
    }
    data["sysVer"] = sysVer;
    data["uptime"] = uptime;
    if (disk != null) {
      final v = disk;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data["disk"] = arr0;
    }
    data['tcp'] = tcp;
    return data;
  }
}
