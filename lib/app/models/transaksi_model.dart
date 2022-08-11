import 'dart:convert';

Transaksi transaksiFromJson(String str) => Transaksi.fromJson(json.decode(str));

String transaksiToJson(Transaksi data) => json.encode(data.toJson());

class Transaksi {
  Transaksi({
    required this.ref,
    required this.time,
    required this.status,
    required this.dst,
    required this.numberCard,
    required this.pay,
    required this.admin,
    required this.total,
  });

  String ref;
  String time;
  String status;
  String dst;
  String numberCard;
  String pay;
  String admin;
  String total;

  factory Transaksi.fromJson(Map<String, dynamic> json) => Transaksi(
        ref: json["ref"],
        time: json["time"],
        status: json["status"],
        dst: json["dst"],
        numberCard: json["numberCard"],
        pay: json["pay"],
        admin: json["admin"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "ref": ref,
        "time": time,
        "status": status,
        "dst": dst,
        "numberCard": numberCard,
        "pay": pay,
        "admin": admin,
        "total": total,
      };
}

var dataTransaksi = '''{
    "ref": "2206120015T7",
    "time": "06/08/2022 12:09:20",
    "status": "Berhasil",
    "dst": "1234567899882",
    "numberCard": "489456534333",
    "pay": "50004",
    "admin": "0",
    "total": "50004"
  }''';
