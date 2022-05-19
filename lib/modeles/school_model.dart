
class Schoo {
    Schoo({
        this.id,
        this.name,
        this.schoolTypeId,
        this.position,
        this.logo,
        this.directorId,
        this.dren,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    String? name;
    int? schoolTypeId;
    String? position;
    dynamic? logo;
    dynamic? directorId;
    String? dren;
    DateTime? createdAt;
    dynamic? updatedAt;

    factory Schoo.fromJson(Map<String, dynamic> json) => Schoo(
        id: json["user"]["id"],
        name: json["user"]["name"],
        schoolTypeId: json["user"]["schoolTypeId"],
        position: json["user"]["position"],
        logo: json["user"]["logo"],
        directorId: json["user"]["directorId"],
        dren: json["user"]["dren"],
        createdAt: DateTime.parse(json["user"]["createdAt"]),
        updatedAt: json["user"]["updatedAt"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "schoolTypeId": schoolTypeId,
        "position": position,
        "logo": logo,
        "directorId": directorId,
        "dren": dren,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt,
    };
}
