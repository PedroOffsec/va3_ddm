import 'prato_dto.dart';

class RestauranteDto {
  String nome;
  List<PratoDto> cardapio;

  RestauranteDto(this.nome, this.cardapio);
}
