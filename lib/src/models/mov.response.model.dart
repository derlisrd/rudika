class MovResponseModel {
  bool success;
  final List<MovModel> results;

  MovResponseModel({required this.success, required this.results});

  Map<String,dynamic> toMap(){
    return {
      "success": success,
      "results": results,
    };
  }

 //*  ACA DEBES CAMBIAR EL MODELO *//
  factory MovResponseModel.fromMap(Map<String, dynamic> json) {
    return MovResponseModel(
        success: json['success'] ?? false,
        results: List<MovModel>.from(json['results'].map((result) => MovModel.fromJson(result)))
    );
  }

}

class MovModel{

  int id;
  int categoryId;
  int tipo;
  String description;
  double value;
  String fecha;

  MovModel({ required this.id, required this.tipo, required this.description, required this.value, required this.fecha, required this.categoryId});

  factory MovModel.fromJson(Map<String, dynamic> json) {
    return MovModel(
        categoryId: json['category_id'] ?? 0,
        tipo: json['tipo'] ?? 0,
        description : json['description'] ?? '',
        value: json['value'] ?? 0,
        fecha: json['created_at'] ?? '',
        id: json['id'] ?? 0
      );
  }
}
