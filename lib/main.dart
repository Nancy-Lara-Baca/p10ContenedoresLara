import 'package:flutter/material.dart';

void main() => runApp(MiEjemplo());

class MiEjemplo extends StatelessWidget {
  const MiEjemplo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de contenedores'),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
          backgroundColor: const Color(0xfff195b4),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff680325), // Color de fondo
                  borderRadius:
                      BorderRadius.circular(0), // Esquinas redondeadas
                ),
                child: const Center(
                  child: Text(
                    'Contenedor 1',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 150,
              height: 200,
              color: const Color(0xff9a5c70),
              child: Center(
                child: Text(
                  'Contenedor 2',
                  style: TextStyle(color: Color(0xff000000), fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 220,
              color: Color(0xff4d122e),
              child: Center(
                child: Text(
                  'Contenedor 3',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
