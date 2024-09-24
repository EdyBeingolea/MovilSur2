import 'package:flutter/material.dart';

class Usuario extends StatelessWidget {
  const Usuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> usuarios = [
      'Carlos',
      'Marleni',
      'Pedro',
      'Carla',
      'Madona',
      'Raquel',
      'Belinda',
      'Sofia',
      'Isabela',
      'Carlota',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Usuario"),
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
              'Lista de Usuarios',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: usuarios.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(usuarios[index][0]),
                    ),
                    title: Text(
                      usuarios[index],
                      style: const TextStyle(fontSize: 16),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                'Usuario seleccionado: ${usuarios[index]}')),
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
