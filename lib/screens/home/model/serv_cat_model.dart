
// class ServCatModel {
//   String id;
//   String name;
//   String icon;
//   String description;
//   String ctime;
//   String mtime;
//   String cuid;
//   String muid;
//   String status;

//   ServCatModel({this.id, this.name, this.icon, this.description, this.ctime, this.mtime, this.cuid, this.muid, this.status});

//   ServCatModel.fromJson(Map<String, dynamic> json) {
//     if(json["id"] is String)
//       this.id = json["id"];
//     if(json["name"] is String)
//       this.name = json["name"];
//     if(json["icon"] is String)
//       this.icon = json["icon"];
//     if(json["description"] is String)
//       this.description = json["description"];
//     if(json["ctime"] is String)
//       this.ctime = json["ctime"];
//     if(json["mtime"] is String)
//       this.mtime = json["mtime"];
//     if(json["cuid"] is String)
//       this.cuid = json["cuid"];
//     if(json["muid"] is String)
//       this.muid = json["muid"];
//     if(json["status"] is String)
//       this.status = json["status"];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data["id"] = this.id;
//     data["name"] = this.name;
//     data["icon"] = this.icon;
//     data["description"] = this.description;
//     data["ctime"] = this.ctime;
//     data["mtime"] = this.mtime;
//     data["cuid"] = this.cuid;
//     data["muid"] = this.muid;
//     data["status"] = this.status;
//     return data;
//   }
// }