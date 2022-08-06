class DeviceModel {
  String name= "";
  String color= "";
  bool isActive = false;
  String icon = "";

  DeviceModel({required this.name,required this.color,required this.isActive,required this.icon});

  DeviceModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    color = json['color'];
    isActive = json['isActive'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['color'] = this.color;
    data['isActive'] = this.isActive;
    data['icon'] = this.icon;
    return data;
  }
}
