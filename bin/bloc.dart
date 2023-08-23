import 'dart:async';

void main(List<String> arguments) {
  //criando um stream
  final StreamController<dynamic> ctrl = StreamController<dynamic>();

  //adicionar um listener ao stream
  StreamSubscription<dynamic> sub = ctrl.stream.listen((dados) {
    print('$dados');
  });

  //adicionar dados para o stream
  ctrl.sink.add('Estudando arquitetura BLoc');
  ctrl.sink.add(2023);
  ctrl.sink.add({'Nome': 'Jose Fabio', 'Idade': 42});

  //fechando o stream
  ctrl.close();
  print('$sub');
}
