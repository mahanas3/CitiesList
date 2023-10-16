import 'package:flutter/material.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNOXzONlME7TsDzEleDSfEqDEw-aFwwn6g5JwthavsIYV4G86fHtFglS5Zaurmge5RhA0&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRZ7-4PIkXOM4Qd1bVI1AQhMhb_0sgJxGgLQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ1Hr622bZl5fckHLWdQd_O4kzZjGoJHsWvo2s2-432VyyCkcFiL-vtmWwa_qojdADskw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKlVdDxJmcqaO9SRlNYsoiLdDMxTPXNoRsVJ-PgSwXqIxYJMVa1k012BcG6ZbtLKEchns&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6-0m8uTd5hB3_NUX5aUrylw1_BOJ6eEkjN7Ydch-Stv0elVLWGu8PMs-bpm95Vg2B988&usqp=CAU'
    ];

    List title = ['Delhi', 'London', 'Vancouver', 'New York', 'UAE'];

    List place = ['India', 'Britain', 'Canada', 'USA', 'Dubai'];

    List population = [
      '19 mill',
      '8 mill',
      '2.4 mill',
      '8.1 mill',
      '9.99 mill'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text('Cities around the world',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black87)),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: title.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    child: Row(
                      children: [
                        Image(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                title[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(place[index],
                                  style: const TextStyle(fontSize: 20)),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  const Text('Population:',style: TextStyle(fontSize: 20)),
                                  Text(
                                    population[index],
                                    style: const TextStyle(fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
