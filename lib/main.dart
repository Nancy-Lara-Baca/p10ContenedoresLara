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
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red, // Color de fondo
                  borderRadius:
                      BorderRadius.circular(0), // Esquinas redondeadas
                ),
                child: const Center(
                  child: Text(
                    'Contenedor 1',
                    style: TextStyle(color: Color(0xff000000), fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: 150,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Contenedor 2',
                  style:
                      const TextStyle(color: Color(0xff000000), fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 220,
              color: Colors.amber,
              child: Center(
                child: const Text(
                  'Contenedor 3',
                  style: TextStyle(color: Color(0xff000000), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
