import 'package:flutter/material.dart';

class Conductor extends StatelessWidget {
  const Conductor({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> conductores = [
      'Jorge',
      'Marcos',
      'Esteban',
      'Leonardo',
      'Fabiola',
      'Renato',
      'Gonzalo',
      'Patricia',
      'Bruno',
      'Sandra',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Conductor"),
        leading: IconButton(
          // Botón de retroceso en el AppBar
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lista de Conductores',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: conductores.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(conductores[index][0]),
                    ),
                    title: Text(
                      conductores[index],
                      style: const TextStyle(fontSize: 16),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Conductor seleccionado: ${conductores[index]}'),
                        ),
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
            const SizedBox(height: 20),

            // Botón para ingresar como usuario
          ],
        ),
      ),
    );
  }
}
