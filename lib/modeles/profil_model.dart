class Profile {
    Profile({
        this.id,
        this.name,
        this.createdAt,
        this.updateAt,
    });

    int? id;
    String? name;
    DateTime? createdAt;
    dynamic? updateAt;

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["user"]["id"],
        name: json["user"]["name"],
        createdAt: DateTime.parse(json["user"]["createdAt"]),
        updateAt: json["user"]["updateAt"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "createdAt": createdAt!.toIso8601String(),
        "updateAt": updateAt,
    };
}

