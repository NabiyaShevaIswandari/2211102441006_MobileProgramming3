import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('E-Commerce'),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'https://fastly.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I', 
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Penawaran Spesial',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Ganti dengan jumlah item penawaran
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150.0,
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      color: Colors.grey[300],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://fastly.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I', 
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Item ${index + 1}',
                            style: const TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Produk Terpopuler',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(4, (index) {
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://picsum.photos/id/3/200${index + 1}',
                          height: 100.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nama Produk ${index + 1}',
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '\$${(index + 1) * 25}',
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
