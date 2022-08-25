// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  final String nome;
  int quantidade;
  double valor;
  ProductModel({
    required this.nome,
    required this.quantidade,
    required this.valor,
  });

  ProductModel copyWith({
    String? nome,
    int? quantidade,
    double? valor,
  }) {
    return ProductModel(
      nome: nome ?? this.nome,
      quantidade: quantidade ?? this.quantidade,
      valor: valor ?? this.valor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'quantidade': quantidade,
      'valor': valor,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      nome: map['nome'] as String,
      quantidade: map['quantidade'] as int,
      valor: map['valor'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProductModel(nome: $nome, quantidade: $quantidade, valor: $valor)';

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.nome == nome && other.quantidade == quantidade && other.valor == valor;
  }

  @override
  int get hashCode => nome.hashCode ^ quantidade.hashCode ^ valor.hashCode;
}
