
import 'dart:core';

import 'package:alpha2/modeles/commune_ministre.dart';
import 'package:alpha2/modeles/direcion.dart';
import 'package:alpha2/modeles/ministere.dart';
import 'package:alpha2/modeles/requete_body.dart';
import 'package:alpha2/modeles/statusRequete.dart';

class RequeteType {
    RequeteType({
        this.code,
        this.ministere,
        this.direction,
        this.communeRegion,
        this.natureRequete,
        this.theme,
        this.typeContact,
        this.statusRequete,
        this.daterejet,
        this.noteAgentTraiteur,
        this.nvFileUrl,
        this.fileUrl,
        this.agentTraiteur,
        this.user,
        this.reclamation,
        this.updateAt,
        this.deleteAt,
        this.isDelete,
    });

    String? code;
    Ministere? ministere;
    Direction ?direction;
    CommuneRegion? communeRegion;
    CommuneRegion? natureRequete;
    CommuneRegion? theme;
    CommuneRegion ?typeContact;
    StatusRequete? statusRequete;
    DateTime? daterejet;
    String? noteAgentTraiteur;
    String? nvFileUrl;
    String? fileUrl;
    String? agentTraiteur;
    User? user;
    String? reclamation;
    DateTime? updateAt;
    DateTime ?deleteAt;
    bool? isDelete;

    factory RequeteType.fromJson(Map<String, dynamic> json) => RequeteType(
        code: json["code"],
        ministere: Ministere.fromJson(json["ministere"]),
        direction: Direction.fromJson(json["direction"]),
        communeRegion: CommuneRegion.fromJson(json["communeRegion"]),
        natureRequete: CommuneRegion.fromJson(json["natureRequete"]),
        theme: CommuneRegion.fromJson(json["theme"]),
        typeContact: CommuneRegion.fromJson(json["typeContact"]),
        statusRequete: StatusRequete.fromJson(json["statusRequete"]),
        daterejet: DateTime.parse(json["daterejet"]),
        noteAgentTraiteur: json["noteAgentTraiteur"],
        nvFileUrl: json["nvFileUrl"],
        fileUrl: json["fileUrl"],
        agentTraiteur: json["agentTraiteur"],
        user: User.fromJson(json["user"]),
        reclamation: json["reclamation"],
        updateAt: DateTime.parse(json["updateAt"]),
        deleteAt: DateTime.parse(json["deleteAt"]),
        isDelete: json["isDelete"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "ministere": ministere!.toJson(),
        "direction": direction!.toJson(),
        "communeRegion": communeRegion!.toJson(),
        "natureRequete": natureRequete!.toJson(),
        "theme": theme!.toJson(),
        "typeContact": typeContact!.toJson(),
        "statusRequete": statusRequete!.toJson(),
        "daterejet": daterejet!.toIso8601String(),
        "noteAgentTraiteur": noteAgentTraiteur,
        "nvFileUrl": nvFileUrl,
        "fileUrl": fileUrl,
        "agentTraiteur": agentTraiteur,
        "user": user!.toJson(),
        "reclamation": reclamation,
        "updateAt": updateAt!.toIso8601String(),
        "deleteAt": deleteAt!.toIso8601String(),
        "isDelete": isDelete,
    };
}