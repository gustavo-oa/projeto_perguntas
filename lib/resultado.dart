import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuiestionario;
  Resultado(this.pontuacao, this.reiniciarQuiestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    }

    return 'Nivel Jedi!!!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )),
        ElevatedButton(
          onPressed: reiniciarQuiestionario,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            maximumSize: Size.infinite,
          ),
          child: Text(
            'Reiniciar',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
